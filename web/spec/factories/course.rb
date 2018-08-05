FactoryBot.define do
  factory :course do
    animal_name = FFaker::Animal.common_name
    title { animal_name }
    description %{
      In this course children will learn to be cool with #{animal_name}s
    }
    introduction %{
      In the beginning children did not know about #{animal_name}s and that was
      not cool. Then one day someone told the children about #{animal_name}s.
      That was so cool.
    }
    year "k1"
    
    factory :course_with_modules do
      transient do
        modules_count 4
      end

      after(:create) do |course, evaluator|
        create_list(
          :course_module, evaluator.modules_count, course: course
        )
      end
    end
  end
end
