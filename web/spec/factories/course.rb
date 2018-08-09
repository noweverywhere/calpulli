FactoryBot.define do
  factory :course do
    year "k1"
    
    factory :course_with_modules do
      transient do
        modules_count 4
      end

      after(:create) do |course, evaluator|
        create_list(
          :course_module,
          evaluator.modules_count,
          course: course,
        )
      end
    end
  end
end
