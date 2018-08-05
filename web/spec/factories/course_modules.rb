FactoryBot.define do
  sequence :course_modules do |n|
    course_module(
      title: "Week #{n}",
      description: "Description week #{n}",
    )
  end

  factory :course_module do
    title "Course Module title"
    description "Course Module description"
  end
end
