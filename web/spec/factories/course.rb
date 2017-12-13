FactoryBot.define do
  factory :course do
    title { FFaker::Animal.common_name }
    description "In this course children will learn to be cool with #{FFaker::Animal.common_name}"
    introduction %{In the beginning children did not know about animals and
      that was not cool. Then one day someone told the children about animals.
      That was so cool.}
    year "k1"
  end
end
