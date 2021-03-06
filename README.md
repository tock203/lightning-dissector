# lightning-dissector

A wireshark plugin to analyze communication between Lightning Network nodes

![Sample screenshot of the dissector running in Wireshark](https://user-images.githubusercontent.com/12756700/45472759-1b79fe00-b770-11e8-812b-f73e8cd18ab6.png)

## Installation

First of all, you have to make sure that luarocks for Lua 5.2 is installed.  
[Here is how to build it](https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Unix). (You should set --lua-version=5.2 option when doing `./configure`.)  
And you'll need Lua library and headers. (if Ubuntu you can get it by `apt install lua5.2 liblua5.2-dev`)

Other requirements:

- libpcre (`apt install libpcre3-dev`)

```bash
git clone https://github.com/nayutaco/lightning-dissector.git --recursive
cd lightning-dissector
luarocks --local make
mkdir -p ~/.config/wireshark/plugins
ln -s ~/.luarocks/share/lua/5.2/lightning-dissector/wireshark-plugin.lua ~/.config/wireshark/plugins/lightning-dissector.lua
```

When a big BOLT message comes, lightning-dissector outputs a big message to Wireshark. (#25)
Therefore, you might have to apply these patches to Wireshark source code.

```diff
diff --git epan/proto.h epan/proto.h
index afe8dae6e2..81e1e74a60 100644
--- epan/proto.h
+++ epan/proto.h
@@ -60,7 +60,7 @@ extern "C" {
 WS_DLL_PUBLIC int hf_text_only;

 /** the maximum length of a protocol field string representation */
-#define ITEM_LABEL_LENGTH	240
+#define ITEM_LABEL_LENGTH	10000

 #define ITEM_LABEL_UNKNOWN_STR  "Unknown"
```

## Setup

### Setup TCP ports (optional)

On Bitcoin mainnet or testnet, your lightning node will always bind to TCP port 9735.
In that case you don't need to configure anything, by default the dissector will analyze packets on port 9735.

However, if you're running some tests on a local network and have nodes binding to other ports than 9735,
you need to configure Wireshark to inspect those ports.

Go to `Analyze -> Decode As...` to add TCP ports to be analyzed by the dissector.

### c-lightning (beta)

```bash
git clone https://github.com/arowser/lightning -b dissector
cd lightning
./configure  --enable-dissector
make -j
make install  # optional
```

### Eclair

Eclair uses [logback](https://logback.qos.ch/) to configure its logs.
Logback uses a configuration file that can be updated while the node is running.
The default configuration can be found in `eclair-node/src/main/resources/logback.xml`.

To dump encryption keys for the lightning-dissector:

- copy `logback.xml` to your node's data directory (by default ~/.eclair)
- update the `logger` section named `keylog`: set its `level` to `DEBUG` (instead of `OFF`)
- run your node with the `-Dlogback.configurationFile` option pointing to your modified `logback.xml` (for example `-Dlogback.configurationFile=/home/lightning-master/.eclair/logback.xml`)

The `keylog` section of your `logback.xml` file should look like:

```xml
<logger level="DEBUG" name="keylog" additivity="false">
  <appender-ref ref="KEYLOG"/>
</logger>
```

You can then configure lightning-dissector's location for the key log by `Protocols -> LIGHTNING -> Eclair log file` (~/.eclair/keys.log by default).

### Ptarmigan

You need to build ptarmigan with developer mode enabled.

```bash
sed -i 's/ENABLE_DEVELOPER_MODE=0/ENABLE_DEVELOPER_MODE=1/g' options.mak
make full
```

Set `$LIGHTNINGKEYLOGFILE` before starting ptarmigan.  
ptarmigan dumps decryption keys to there.

```bash
mkdir ~/.cache/ptarmigan
export LIGHTNINGKEYLOGFILE=~/.cache/ptarmigan/keys.log
```

You should set `$LIGHTNINGKEYLOGFILE` value and `Protocols -> LIGHTNING -> Key log file` preference same. (~/.cache/ptarmigan/keys.log by default)

### lnd (beta)

You have to start lnd at your $HOME.

```bash
go get -d github.com/lightningnetwork/lnd
cd $GOPATH/src/github.com/lightningnetwork/lnd
git remote add nakajo2011 https://github.com/nakajo2011/lnd.git
git fetch nakajo2011 dissector
git checkout nakajo2011/dissector
make && make install
```

## Status

### Supported implementations

Currently, lightning-dissector can decrypt messages sent from

- c-lightning
- lnd
- eclair
- ptarmigan

If you are developer of some BOLT implementation, I need your help!  
[You can make your BOLT implementation support lightning-dissector by dumping key log file, or writing a new SecretManager](https://github.com/nayutaco/lightning-dissector/blob/master/CONTRIBUTING.md).
