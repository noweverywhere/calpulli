FactoryBot.define do
  sequence :course_modules do |n|
    course_module(
      title: "Week #{n}",
      description: "Description week #{n}",
    )
  end

  factory :course_module do
    title { FFaker::Animal.common_name }
    description { %{
      In this course children will learn to be cool with #{title}s
    } }
    introduction { %{
      In the beginning children did not know about #{title}s and that was
      not cool. Then one day someone told the children about #{title}s.
      That was so cool.
    } }

    after :create do |course_module|
      Array(1..4).each do |position|
        create(
          :module_session,
          course_module: course_module,
          order_position: position,
          course_id: course_module.course.id,
          description: Array.new(100, course_module.title).join(" "),
        )
      end
    end
  end
end
