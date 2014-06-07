class Hl7Parser
  def initialize
    @file = nil
  end

  def file(file_name)
    @file = file_name
  end

  def process_file
    raw_input = open( "#{@file}" ).readlines
    msg = HL7::Message.new( raw_input )

    #just grab and print non-blank elements for now
    puts "MSH sending app : #{msg[:MSH].sending_app}" unless msg[:MSH].sending_app.blank?
    puts "MSH sending facility : #{msg[:MSH].sending_facility}" unless msg[:MSH].sending_facility.blank?
    puts "MSH recv app : #{msg[:MSH].recv_app}" unless msg[:MSH].recv_app.blank?
    puts "MSH recv facility : #{msg[:MSH].recv_facility}" unless msg[:MSH].recv_facility.blank?
    puts "MSH time : #{msg[:MSH].time}" unless msg[:MSH].time.blank?
    puts "MSH security : #{msg[:MSH].security}" unless msg[:MSH].security.blank?
    puts "MSH message_type : #{msg[:MSH].message_type}" unless msg[:MSH].message_type.blank?
    puts "MSH message control id : #{msg[:MSH].message_control_id}" unless msg[:MSH].message_control_id.blank?
    puts "MSH processing id : #{msg[:MSH].processing_id}" unless msg[:MSH].processing_id.blank?
    puts "MSH version id : #{msg[:MSH].version_id}" unless msg[:MSH].version_id.blank?
    puts "MSH seq : #{msg[:MSH].seq}" unless msg[:MSH].seq.blank?
    puts "MSH continue ptr : #{msg[:MSH].continue_ptr}" unless msg[:MSH].continue_ptr.blank?
    puts "MSH accept_ack_type : #{msg[:MSH].accept_ack_type}" unless msg[:MSH].accept_ack_type.blank?
    puts "MSH app_ack_type : #{msg[:MSH].app_ack_type}" unless msg[:MSH].app_ack_type.blank?
    puts "MSH country code : #{msg[:MSH].country_code}" unless msg[:MSH].country_code.blank?
    puts "MSH charset : #{msg[:MSH].charset}" unless msg[:MSH].charset.blank?
    puts "MSH principal language of message : #{msg[:MSH].principal_language_of_message}" unless msg[:MSH].principal_language_of_message.blank?
    puts "MSH alternate character set handling scheme : #{msg[:MSH].alternate_character_set_handling_scheme}" unless msg[:MSH].alternate_character_set_handling_scheme.blank?
    puts "MSH message profile identifier : #{msg[:MSH].message_profile_identifier}" unless msg[:MSH].message_profile_identifier.blank?


    unless msg[:ENV].blank?
      puts "#{msg[:ENV].type_code}"
      puts "#{msg[:ENV].recorded_date}"
      puts "#{msg[:ENV].planned_date}"
      puts "#{msg[:ENV].reason_code}"
      puts "#{msg[:ENV].operator_id}"
      puts "#{msg[:ENV].event_occurred}"
      puts "#{msg[:ENV].event_facility}"
    end

    unless msg[:OBR].blank?
      puts "OBR set id : #{msg[:OBR].set_id}" unless msg[:OBR].set_id.blank?
      puts "OBR placer_order_number : #{msg[:OBR].placer_order_number}"  unless msg[:OBR].placer_order_number.blank?
      puts "OBR filler_order_number : #{msg[:OBR].filler_order_number}"  unless msg[:OBR].filler_order_number.blank?
      puts "OBR universal_service_id : #{msg[:OBR].universal_service_id}"  unless msg[:OBR].universal_service_id.blank?
      puts "OBR priority : #{msg[:OBR].priority}"  unless msg[:OBR].priority.blank?
      puts "OBR requested_date : #{msg[:OBR].requested_date}"  unless msg[:OBR].requested_date.blank?
      puts "OBR observation_date : #{msg[:OBR].observation_date }"  unless msg[:OBR].observation_date.blank?

      puts "OBR observation_end_date  : #{msg[:OBR].observation_end_date  }"  unless msg[:OBR].observation_end_date .blank?
      puts "OBR collection_volume : #{msg[:OBR].collection_volume }"  unless msg[:OBR].collection_volume.blank?
      puts "OBR collector_identifier : #{msg[:OBR].collector_identifier }"  unless msg[:OBR].collector_identifier.blank?
      puts "OBR specimen_action_code : #{msg[:OBR].specimen_action_code }"  unless msg[:OBR].specimen_action_code.blank?
      puts "OBR danger_code : #{msg[:OBR].danger_code }"  unless msg[:OBR].danger_code.blank?
      puts "OBR relevant_clinical_info : #{msg[:OBR].relevant_clinical_info }"  unless msg[:OBR].relevant_clinical_info.blank?
      puts "OBR specimen_received_date  : #{msg[:OBR].specimen_received_date  }"  unless msg[:OBR].specimen_received_date .blank?
      puts "OBR specimen_source : #{msg[:OBR].specimen_source }"  unless msg[:OBR].specimen_source.blank?

      puts "OBR ordering_provider : #{msg[:OBR].ordering_provider }"  unless msg[:OBR].ordering_provider.blank?
      puts "OBR order_callback_phone_number : #{msg[:OBR].order_callback_phone_number }"  unless msg[:OBR].order_callback_phone_number.blank?
      puts "OBR placer_field_1 : #{msg[:OBR].placer_field_1 }"  unless msg[:OBR].placer_field_1.blank?
      puts "OBR placer_field_2 : #{msg[:OBR].placer_field_2 }"  unless msg[:OBR].placer_field_2.blank?
      #puts "OBR filer_field_1 : #{msg[:OBR].filer_field_1 }"  unless msg[:OBR].filer_field_1.blank?
      #puts "OBR filer_field_2 : #{msg[:OBR].filer_field_2 }"  unless msg[:OBR].filer_field_2.blank?
      puts "OBR results_status_change_date  : #{msg[:OBR].results_status_change_date  }"  unless msg[:OBR].results_status_change_date .blank?
      puts "OBR charge_to_practice : #{msg[:OBR].charge_to_practice }"  unless msg[:OBR].charge_to_practice.blank?

    end

  end




end