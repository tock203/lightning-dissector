package = "lightning-dissector"
version = "scm-1"

source = {
  url = "git://github.com/nayutaco/lightning-dissector.git"
}

description = {
  summary = "A wireshark plugin to analyze communication between lightning network nodes",
  homepage = "https://github.com/nayutaco/lightning-dissector",
  license = "MIT"
}

dependencies = { 
  "lua == 5.2",
  "lrexlib-pcre == 2.9.0",
  "compat53 == 0.7",
  "inspect == 3.1.1",
  "basexx == 0.4.0",
  "poly1305 == 1.0"
}

build = {
  type = "builtin",
  modules = {
    ["lightning-dissector.wireshark-plugin"] = "wireshark-plugin.lua",
    ["lightning-dissector.pdu-analyzer"] = "pdu-analyzer.lua",
    ["lightning-dissector.secret"] = "secret.lua",
    ["lightning-dissector.secret-manager"] = "secret-manager.lua",
    ["lightning-dissector.deserializers.init"] = "deserializers/init.lua",
    ["lightning-dissector.deserializers.ping"] = "deserializers/ping.lua",
    ["lightning-dissector.deserializers.pong"] = "deserializers/pong.lua",
    ["lightning-dissector.deserializers.error"] = "deserializers/error.lua",
    ["lightning-dissector.deserializers.channel-announcement"] = "deserializers/channel-announcement.lua",
    ["lightning-dissector.deserializers.channel-update"] = "deserializers/channel-update.lua",
    ["lightning-dissector.utils.reader"] = "utils/reader.lua",
    ["plc52.bin"] = "plc/plc/bin.lua",
    ["plc52.chacha20"] = "plc/plc/chacha20.lua"
  }
}
