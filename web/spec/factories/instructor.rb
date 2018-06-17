FactoryBot.define do
  factory :instructor do
    email { FFaker::Internet.safe_email }
    password { SecureRandom.uuid }

    factory :instructor_of_multiple_courses do
      transient do
        course_license 2
      end
    end
  end
end
