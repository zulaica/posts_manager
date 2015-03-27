FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "user#{n}" }
    sequence(:email) { |n| "user#{n}@domain.tld" }
    password "password1234"
    password_confirmation "password1234"
  end

  factory :post do
    user
    title 'The Post Title'
    entry 'This is the post body.'
    published Time.now
  end

  factory :comment do
    post
    text "Keep on keepin' on."
    published Time.now
  end
end
