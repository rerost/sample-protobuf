type_name = ARGV[0]

def new_sample
  educations = [
    Protos::SamplePB::User::Education.new(
      school_name: "釧路高専"
    ),
    Protos::SamplePB::User::Education.new(
      school_name: "筑波大学"
    ),
  ]

  experiences = [
    Protos::SamplePB::User::Experience.new(
      company_name: "ウォンテッドリー株式会社"
    ),
  ]

  Protos::SamplePB::User.new(
    user_name: 'rerost',
    introduction: 'ジャスコから110km',
    age: 23,
    educations: educations,
    experiences: experiences,
  )
end

sample = new_sample
case type_name
when nil
  puts Protos::SamplePB::User.encode(sample)
when "json"
  puts Protos::SamplePB::User.encode_json(sample)
end
