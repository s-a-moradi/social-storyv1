FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
    factory :superWriter do
      superWriter true
    end
  end
    factory :micropost do
    content "Lorem ipsum"
    user
  end
end
