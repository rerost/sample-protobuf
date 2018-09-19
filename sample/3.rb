def new_sample
  Protos::SamplePB::User.new(
    user_name: nil, # エラー nilは与えられない
    age: 23,
    introduction: 'ジャスコから110km',
    educations: [],
    experiences: [],
  )
end

sample = new_sample
