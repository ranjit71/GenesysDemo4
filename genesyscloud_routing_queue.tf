resource "genesyscloud_routing_queue" "Collections" {
  auto_answer_only                 = false
  suppress_in_queue_call_recording = true
  enable_audio_monitoring          = false
  media_settings_callback {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
  }
  media_settings_email {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
  }
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "whatsapp"
    }
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "facebook"
    }
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "instagram"
    }
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "open"
    }
    sub_type_settings {
      enable_auto_answer = true
      media_type         = "sms"
    }
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "twitter"
    }
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "webmessaging"
    }
    alerting_timeout_sec     = 30
    enable_auto_answer       = false
    enable_auto_dial_and_end = false
  }
  name = "Collections"
  members {
    ring_num = 1
    user_id  = "10617c8a-e85a-45f6-8187-9f3503d7336f"
  }
  members {
    ring_num = 1
    user_id  = "5611da11-8755-41ad-bdfc-a4c661ab8f57"
  }
  members {
    ring_num = 1
    user_id  = "7a123306-3d80-4526-9bb4-892177430f8e"
  }
  members {
    ring_num = 1
    user_id  = "9618b1e8-735a-47e1-b3d5-d8982a094e80"
  }
  members {
    ring_num = 1
    user_id  = "9fc3e732-3538-4b34-b172-934ad6ae94f0"
  }
  acw_timeout_ms           = 120000
  calling_party_number     = "+13179836000"
  enable_manual_assignment = false
  acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
  media_settings_call {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
  }
  media_settings_chat {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  skill_evaluation_method = "BEST"
  division_id             = "32b83326-f417-41fc-8474-f5e59d228f16"
  wrapup_codes            = ["06d930ca-ddab-48ed-8dc7-a7a5c074e54f", "0a1d46b8-7f4d-459c-bb0c-15b5e4799f37", "b005fa22-85ad-47cf-ad44-08330cbaf6c0", "f2d78a33-26da-4c61-9253-f4379ae886c3"]
  calling_party_name      = "Disfruta Global Collections"
  default_script_ids = {
    MESSAGE = "476c2b71-7429-11e4-9a5b-3f91746bffa3"
  }
  enable_transcription = false
  scoring_method       = "TimestampAndPriority"
}

resource "genesyscloud_routing_queue" "Customer_Service" {
  suppress_in_queue_call_recording = true
  acw_wrapup_prompt                = "MANDATORY_TIMEOUT"
  scoring_method                   = "TimestampAndPriority"
  skill_evaluation_method          = "ALL"
  members {
    ring_num = 1
    user_id  = "02a64a51-e079-4d4c-b859-faa1ebf6dacc"
  }
  members {
    ring_num = 1
    user_id  = "5ffdaef9-2107-4815-a805-151315ff265f"
  }
  members {
    ring_num = 1
    user_id  = "60cbf594-05cb-4990-b327-f4dd348226f8"
  }
  members {
    ring_num = 1
    user_id  = "73a627a9-e51e-48e8-867d-5ee9fb53c042"
  }
  members {
    ring_num = 1
    user_id  = "89261bbb-ccae-49c9-b0ad-fac9fc0ee94a"
  }
  members {
    user_id  = "bb82960b-1640-45f3-9a4c-1f12edf681d3"
    ring_num = 1
  }
  members {
    ring_num = 1
    user_id  = "c69d4550-a7eb-4403-807b-2061a9de2bcf"
  }
  members {
    user_id  = "d02383ea-8ab9-4522-8612-b7f5456423ce"
    ring_num = 1
  }
  members {
    ring_num = 1
    user_id  = "ea36f1ec-6c5d-4709-bb76-184295b2055d"
  }
  members {
    ring_num = 1
    user_id  = "fdc6b3cb-3b7c-4504-b4cb-605777f81851"
  }
  enable_audio_monitoring = false
  media_settings_chat {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_message {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  routing_rules {
    operator     = "ANY"
    wait_seconds = 10
  }
  wrapup_codes         = ["a6d910c6-ba68-4b0a-a400-c8a08ea2a1ed", "b005fa22-85ad-47cf-ad44-08330cbaf6c0", "f2d78a33-26da-4c61-9253-f4379ae886c3"]
  calling_party_number = "+13179832000"
  enable_transcription = false
  media_settings_callback {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
  }
  acw_timeout_ms = 120000
  media_settings_email {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
  }
  division_id              = "32b83326-f417-41fc-8474-f5e59d228f16"
  enable_manual_assignment = false
  media_settings_call {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
  }
  name               = "Customer Service"
  auto_answer_only   = false
  calling_party_name = "Disfruta Global Customer Service"
}

resource "genesyscloud_routing_queue" "For_NFN" {
  auto_answer_only        = false
  enable_audio_monitoring = false
  groups                  = ["0795e040-294d-4d88-92c3-a5c30fe9e01d"]
  media_settings_chat {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  acw_wrapup_prompt = "OPTIONAL"
  wrapup_codes      = ["211efe58-0710-4427-9ab0-8f48daa1830b", "53f28685-6770-431c-a4ef-4af031a217e1", "a6d910c6-ba68-4b0a-a400-c8a08ea2a1ed", "a8aa7283-b57a-4501-a99f-4046f346b4dc"]
  media_settings_message {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "whatsapp"
    }
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "facebook"
    }
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "instagram"
    }
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "open"
    }
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "sms"
    }
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "twitter"
    }
    sub_type_settings {
      enable_auto_answer = false
      media_type         = "webmessaging"
    }
    alerting_timeout_sec = 30
  }
  conditional_group_routing_rules {
    metric          = "EstimatedWaitTime"
    operator        = "GreaterThan"
    wait_seconds    = 2
    condition_value = 30
    groups {
      member_group_id   = "0795e040-294d-4d88-92c3-a5c30fe9e01d"
      member_group_type = "GROUP"
    }
  }
  enable_transcription = false
  media_settings_call {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  members {
    ring_num = 1
    user_id  = "343b5533-dc10-4e39-a62c-8d0babd97d9f"
  }
  members {
    ring_num = 1
    user_id  = "3bd2d785-034b-4f29-ba60-91f1b4d7a49e"
  }
  skill_evaluation_method = "ALL"
  division_id             = "32b83326-f417-41fc-8474-f5e59d228f16"
  name                    = "For NFN"
  queue_flow_id           = "800db91f-75db-4742-831b-6dd1a40eacc2"
  scoring_method          = "TimestampAndPriority"
  default_script_ids = {
    CALL    = "ffde0662-8395-9b04-7dcb-b90172109065"
    MESSAGE = "258604f2-8630-4ebe-be91-78a28def9f66"
  }
  enable_manual_assignment         = false
  suppress_in_queue_call_recording = true
  media_settings_callback {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
}

resource "genesyscloud_routing_queue" "NF" {
  media_settings_email {
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
  }
  enable_transcription = false
  media_settings_message {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  scoring_method          = "TimestampAndPriority"
  enable_audio_monitoring = false
  skill_evaluation_method = "ALL"
  members {
    ring_num = 1
    user_id  = "d3560165-d43e-4c5c-acb0-fb216eca5bc5"
  }
  auto_answer_only = false
  division_id      = "32b83326-f417-41fc-8474-f5e59d228f16"
  media_settings_chat {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  name                             = "NF"
  enable_manual_assignment         = false
  acw_wrapup_prompt                = "OPTIONAL"
  suppress_in_queue_call_recording = true
  media_settings_call {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  media_settings_callback {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
  }
}

resource "genesyscloud_routing_queue" "Sales_Queue" {
  media_settings_call {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
  }
  division_id                      = "32b83326-f417-41fc-8474-f5e59d228f16"
  enable_transcription             = false
  enable_manual_assignment         = false
  suppress_in_queue_call_recording = true
  auto_answer_only                 = true
  media_settings_chat {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  skill_evaluation_method = "ALL"
  acw_wrapup_prompt       = "MANDATORY_TIMEOUT"
  scoring_method          = "TimestampAndPriority"
  media_settings_callback {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  name                    = "Sales Queue"
  enable_audio_monitoring = false
  media_settings_message {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
  }
}

resource "genesyscloud_routing_queue" "Vadala" {
  suppress_in_queue_call_recording = true
  media_settings_email {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 86400000
  }
  scoring_method   = "TimestampAndPriority"
  auto_answer_only = false
  division_id      = "32b83326-f417-41fc-8474-f5e59d228f16"
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  skill_evaluation_method = "ALL"
  enable_audio_monitoring = false
  media_settings_call {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
  }
  media_settings_callback {
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  acw_wrapup_prompt        = "OPTIONAL"
  name                     = "Vadala"
  enable_manual_assignment = false
  enable_transcription     = false
  media_settings_message {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
}

