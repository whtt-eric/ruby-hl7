# encoding: UTF-8
class HL7::Message::Segment::PID < HL7::Message::Segment
  weight 1
  has_children [:NK1,:NTE,:PV1,:PV2,:PD1]
  add_field :set_id, :idx => 1
  add_field :patient_id
  add_field :patient_id_list
  add_field :alt_patient_id
  add_field :patient_name
  add_field :mother_maiden_name
  add_field :patient_dob
  add_field :admin_sex do |sex|
    unless /^[FMOUAN]$/.match(sex) || sex == nil || sex == ""
      raise HL7::InvalidDataError.new( "bad administrative sex value (not F|M|O|U|A|N)" )
    end
    sex = "" unless sex
    sex
  end
  add_field :patient_alias
  add_field :race
  add_field :address
  add_field :country_code
  add_field :phone_home
  add_field :phone_business
  add_field :primary_language
  add_field :marital_status
  add_field :religion
  add_field :account_number
  add_field :social_security_num
  add_field :mothers_id, :idx => 21
  add_field :ethnic_group
  add_field :birthplace
  add_field :multi_birth
  add_field :birth_order
  add_field :citizenship
  add_field :vet_status
  add_field :nationality
  add_field :death_date
  add_field :death_indicator
  add_field :id_unknown_indicator
  add_field :id_readability_code
  add_field :last_update_date
  add_field :last_update_facility
  add_field :species_code
  add_field :breed_code
  add_field :strain
  add_field :production_class_code
  add_field :tribal_citizenship
  add_field :emergency_contact, :idx => 40
end
