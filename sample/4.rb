def new_sample
  Protos::SamplePB::User.new()
end

sample = new_sample
puts sample.age # デフォルト値の0が入る
