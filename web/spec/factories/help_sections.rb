FactoryBot.define do
  factory :help_section do
    title { "Help section for #{FFaker::Animal.common_name}" }
    body "MyString"
    slug "MyString"
    next_section ""
    previous_section ""
  end
end
