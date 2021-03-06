local fields = {
  secret = {
    key = ProtoField.new("Key", "lightning.secret.key", ftypes.STRING),
    nonce = {
      raw = ProtoField.new("Raw", "lightning.secret.nonce.raw", ftypes.STRING),
      deserialized = ProtoField.new("Deserialized", "lightning.secret.nonce.deserialized", ftypes.UINT16)
    }
  },
  length = {
    encrypted = ProtoField.new("Encrypted", "lightning.length.encrypted", ftypes.STRING),
    decrypted = ProtoField.new("Decrypted", "lightning.length.decrypted", ftypes.STRING),
    deserialized = ProtoField.new("Deserialized", "lightning.length.deserialized", ftypes.UINT16),
    mac = ProtoField.new("MAC", "lightning.length.mac", ftypes.STRING)
  },
  payload = {
    encrypted = ProtoField.new("Encrypted", "lightning.payload.encrypted", ftypes.STRING),
    decrypted = ProtoField.new("Decrypted", "lightning.payload.decrypted", ftypes.STRING),
    mac = ProtoField.new("MAC", "lightning.payload.mac", ftypes.STRING),
    deserialized = {
      type = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.type.raw", ftypes.STRING),
        name = ProtoField.new("Name", "lightning.payload.deserialized.type.name", ftypes.STRING),
        number = ProtoField.new("Number", "lightning.payload.deserialized.type.number", ftypes.UINT16)
      },
      gflen = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.gflen.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.gflen.deserialized", ftypes.UINT16)
      },
      global_features = ProtoField.new("global_features", "lightning.payload.deserialized.global_features", ftypes.STRING),
      lflen = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.lflen.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.lflen.deserialized", ftypes.UINT16)
      },
      local_features = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.local_features.raw", ftypes.STRING),
        deserialized = {
          optional = ProtoField.new("Optional", "lightning.payload.deserialized.local_features.deserialized.optional", ftypes.STRING),
          required = ProtoField.new("Required", "lightning.payload.deserialized.local_features.deserialized.required", ftypes.STRING)
        }
      },
      signature = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.signature.raw", ftypes.STRING),
        der = ProtoField.new("DER", "lightning.payload.deserialized.signature.der", ftypes.STRING)
      },
      chain_hash = ProtoField.new("chain_hash", "lightning.payload.deserialized.chain_hash", ftypes.STRING),
      short_channel_id = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.short_channel_id.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.short_channel_id.deserialized", ftypes.STRING)
      },
      timestamp = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.timestamp.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.timestamp.deserialized", ftypes.UINT32)
      },
      message_flags = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.message_flags.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.message_flags.deserialized", ftypes.STRING)
      },
      channel_flags = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.channel_flags.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.channel_flags.deserialized", ftypes.STRING)
      },
      cltv_expiry_delta = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.cltv_expiry_delta.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.cltv_expiry_delta", ftypes.UINT16)
      },
      htlc_minimum_msat = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.htlc_minimum_msat.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.htlc_minimum_msat.deserialized", ftypes.UINT64)
      },
      fee_base_msat = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.fee_base_msat.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.fee_base_msat.deserialized", ftypes.UINT32)
      },
      fee_proportional_millionths = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.fee_proportional_millionths.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.fee_proportional_millionths.deserialized", ftypes.UINT32)
      },
      htlc_maximum_msat = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.htlc_maximum_msat.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.htlc_maximum_msat.deserialized", ftypes.UINT64)
      },
      flen = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.flen.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.flen.deserialized", ftypes.UINT16)
      },
      features = ProtoField.new("features", "lightning.payload.deserialized.features", ftypes.STRING),
      node_id = ProtoField.new("node_id", "lightning.payload.deserialized.node_id", ftypes.STRING),
      rgb_color = ProtoField.new("rgb_color", "lightning.payload.deserialized.rgb_color", ftypes.STRING),
      alias = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.alias.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.alias.deserialized", ftypes.STRING)
      },
      addrlen = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.addrlen.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.addrlen.deserialized", ftypes.UINT16)
      },
      addresses = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.addresses.raw", ftypes.STRING),
        deserialized = {
          type = ProtoField.new("type", "lightning.payload.deserialized.addresses.deserialized.type", ftypes.STRING),
          addr = ProtoField.new("addr", "lightning.payload.deserialized.addresses.deserialized.addr", ftypes.STRING),
          port = ProtoField.new("port", "lightning.payload.deserialized.addresses.deserialized.port", ftypes.UINT16)
        }
      },
      num_pong_bytes = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.num_pong_bytes.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.num_pong_bytes.deserialized", ftypes.UINT16)
      },
      byteslen = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.byteslen.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.byteslen.deserialized", ftypes.UINT16)
      },
      ignored = ProtoField.new("ignored", "lightning.payload.deserialized.ignored", ftypes.STRING),
      channel_id = ProtoField.new("channel_id", "lightning.payload.deserialized.channel_id", ftypes.STRING),
      len = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.len.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.len.deserialized", ftypes.UINT16)
      },
      data = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.data.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.data.deserialized", ftypes.STRING)
      },
      node_signature_1 = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.node_signature_1.raw", ftypes.STRING),
        der = ProtoField.new("DER", "lightning.payload.deserialized.node_signature_1.der", ftypes.STRING)
      },
      node_signature_2 = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.node_signature_2.raw", ftypes.STRING),
        der = ProtoField.new("DER", "lightning.payload.deserialized.node_signature_2.der", ftypes.STRING)
      },
      bitcoin_signature_1 = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.bitcoin_signature_1.raw", ftypes.STRING),
        der = ProtoField.new("DER", "lightning.payload.deserialized.bitcoin_signature_1.der", ftypes.STRING)
      },
      bitcoin_signature_2 = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.bitcoin_signature_2.raw", ftypes.STRING),
        der = ProtoField.new("DER", "lightning.payload.deserialized.bitcoin_signature_2.der", ftypes.STRING)
      },
      node_id_1 = ProtoField.new("node_id_1", "lightning.payload.deserialized.node_id_1", ftypes.STRING),
      node_id_2 = ProtoField.new("node_id_2", "lightning.payload.deserialized.node_id_2", ftypes.STRING),
      bitcoin_key_1 = ProtoField.new("bitcoin_key_1", "lightning.payload.deserialized.bitcoin_key_1", ftypes.STRING),
      bitcoin_key_2 = ProtoField.new("bitcoin_key_2", "lightning.payload.deserialized.bitcoin_key_2", ftypes.STRING),
      temporary_channel_id = ProtoField.new("temporary_channel_id", "lightning.payload.deserialized.temporary_channel_id", ftypes.STRING),
      funding_satoshis = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.funding_satoshis.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.funding_satoshis.deserialized", ftypes.UINT64)
      },
      push_msat = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.push_msat.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.push_msat.deserialized", ftypes.UINT64)
      },
      dust_limit_satoshis = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.dust_limit_satoshis.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.dust_limit_satoshis.deserialized", ftypes.UINT64)
      },
      max_htlc_value_in_flight_msat = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.max_htlc_value_in_flight_msat.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.max_htlc_value_in_flight_msat.deserialized", ftypes.UINT64)
      },
      channel_reserve_satoshis = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.channel_reserve_satoshis.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.channel_reserve_satoshis.deserialized", ftypes.UINT64)
      },
      htlc_minimum_msat = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.htlc_minimum_msat.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.htlc_minimum_msat.deserialized", ftypes.UINT64)
      },
      feerate_per_kw = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.feerate_per_kw.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.feerate_per_kw.deserialized", ftypes.UINT32)
      },
      to_self_delay = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.to_self_delay.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.to_self_delay.deserialized", ftypes.UINT16)
      },
      max_accepted_htlcs = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.max_accepted_htlcs.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.max_accepted_htlcs.deserialized", ftypes.UINT16)
      },
      funding_pubkey = ProtoField.new("funding_pubkey", "lightning.payload.deserialized.funding_pubkey", ftypes.STRING),
      revocation_basepoint = ProtoField.new("revocation_basepoint", "lightning.payload.deserialized.revocation_basepont", ftypes.STRING),
      payment_basepoint = ProtoField.new("payment_basepoint", "lightning.payload.deserialized.payment_basepoint", ftypes.STRING),
      delayed_payment_basepoint = ProtoField.new("delayed_payment_basepoint", "lightning.payload.deserialized.delayed_payment_basepoint", ftypes.STRING),
      htlc_basepoint = ProtoField.new("htlc_basepoint", "lightning.payload.deserialized.htlc_basepoint", ftypes.STRING),
      first_per_commitment_point = ProtoField.new("first_per_commitment_point", "lightning.payload.deserialized.first_per_commitment_point", ftypes.STRING),
      shutdown_len = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.shutdown_len.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.shutdown_len.deserialized", ftypes.UINT16)
      },
      shutdown_scriptpubkey = ProtoField.new("shutdown_scriptpubkey", "lightning.payload.deserialized.shutdown_scriptpubkey", ftypes.STRING),
      minimum_depth = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.minimum_depth.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.minimum_depth.deserialized", ftypes.UINT32)
      },
      funding_txid = ProtoField.new("funding_txid", "lightning.payload.deserialized.funding_txid", ftypes.STRING),
      funding_output_index = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.funding_output_index.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.funding_output_index.deserialized", ftypes.UINT16)
      },
      next_per_commitment_point = ProtoField.new("next_per_commitment_point", "lightning.payload.deserialized.next_per_commitment_point", ftypes.STRING),
      scriptpubkey = ProtoField.new("scriptpubkey", "lightning.payload.deserialized.scriptpubkey", ftypes.STRING),
      fee_satoshis = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.fee_satoshis.raw", ftypes.STRING),
        deserialized = ProtoField.new("Raw", "lightning.payload.deserialized.fee_satoshis.deserialized", ftypes.UINT64)
      },
      id = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.id.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.id.deserialized", ftypes.UINT64)
      },
      amount_msat = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.amount_msat.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.amount_msat.deserialized", ftypes.UINT64)
      },
      payment_hash = ProtoField.new("payment_hash", "lightning.payload.deserialized.payment_hash", ftypes.STRING),
      cltv_expiry = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.cltv_expiry.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.cltv_expiry.deserialized", ftypes.UINT32)
      },
      onion_routing_packet = ProtoField.new("onion_routing_packet", "lightning.payload.deserialized.onion_routing_packet", ftypes.STRING),
      reason = ProtoField.new("reason", "lightning.payload.deserialized.reason", ftypes.STRING),
      payment_preimage = ProtoField.new("payment_preimage", "lightning.payload.deserialized.payment_preimage", ftypes.STRING),
      sha256_of_onion = ProtoField.new("sha256_of_onion", "lightning.payload.deserialized.sha256_of_onion", ftypes.STRING),
      failure_code = ProtoField.new("failure_code", "lightning.payload.deserialized.failure_code", ftypes.STRING),
      num_htlcs = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.num_htlcs.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.num_htlcs.deserialized", ftypes.STRING)
      },
      htlc_signature = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.htlc_signature.raw", ftypes.STRING),
        der = ProtoField.new("DER", "lightning.payload.deserialized.htlc_signature.der", ftypes.STRING)
      },
      per_commitment_secret = ProtoField.new("per_commitment_secret", "lightning.payload.deserialized.per_commitment_secret", ftypes.STRING),
      next_per_commitment_point = ProtoField.new("next_per_commitment_point", "lightning.payload.deserialized.next_per_commitment_point", ftypes.STRING),
      node_signature = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.node_signature.raw", ftypes.STRING),
        der = ProtoField.new("DER", "lightning.payload.deserialized.node_signature.der", ftypes.STRING)
      },
      bitcoin_signature = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.bitcoin_signature.raw", ftypes.STRING),
        der = ProtoField.new("DER", "lightning.payload.deserialized.bitcoin_signature.der", ftypes.STRING)
      },
      encoded_short_ids = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.encoded_short_ids.raw", ftypes.STRING),
        deserialized = {
          raw = ProtoField.new("Raw", "lightning.payload.deserialized.encoded_short_ids.deserialized.raw", ftypes.STRING),
          deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.encoded_short_ids.deserialized.deserialized", ftypes.STRING)
        }
      },
      complete = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.complete.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.complete.deserialized", ftypes.UINT8)
      },
      first_blocknum = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.first_blocknum.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.first_blocknum.deserialized", ftypes.UINT32)
      },
      number_of_blocks = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.number_of_blocks.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.number_of_blocks.deserialized", ftypes.UINT32)
      },
      first_timestamp = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.first_timestamp.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.first_timestamp.deserialized", ftypes.INT32)
      },
      timestamp_range = {
        raw = ProtoField.new("Raw", "lightning.payload.deserialized.timestamp_range.raw", ftypes.STRING),
        deserialized = ProtoField.new("Deserialized", "lightning.payload.deserialized.timestamp_range.deserialized", ftypes.INT32)
      }
    }
  }
}

local fields_array = {}
function flatten(fields)
  for _, value in pairs(fields) do
    local proto_field_type = "userdata"
    if type(value) == proto_field_type then
      table.insert(fields_array, value)
    else
      flatten(value)
    end
  end
end
flatten(fields)

return {
  lengths = {
    length = 2,
    length_mac = 16,
    payload_mac = 16,
    header = 18,
    footer = 16
  },
  fields_array = fields_array,
  fields = fields
}
