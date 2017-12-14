FactoryBot.define do
  factory :instructor do
    email { FFaker::Internet.safe_email }
    password { SecureRandom.uuid }
  end
end
