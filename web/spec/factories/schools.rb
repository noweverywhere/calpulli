FactoryBot.define do
  factory :school do
    name { "#{FFaker::NameMX.first_name} School" }
  end
end
