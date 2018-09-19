def new_sample
  Protos::SamplePB::User.new(
    user_name: 1, # エラー user_nameの型が違うので
    age: 23,
    introduction: 'ジャスコから110km',
    educations: [],
    experiences: [],
  )
end

sample = new_sample
