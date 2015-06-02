# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :admin, class: Admin::User do
    name 'Org Admin'
    email 'moncef@samaritanhouse.com'
    password 'ohanatest'
    password_confirmation 'ohanatest'
    confirmed_at Time.zone.now

    factory :super_admin do
      name 'Super Admin'
      super_admin true
    end

    factory :unconfirmed_admin do
      name 'Unconfirmed admin'
      email 'invalid@example.com'
      password 'ohanatest'
      password_confirmation 'ohanatest'
      confirmed_at nil
    end

    factory :admin_with_generic_email do
      name 'Generic User'
      email 'moncef@gmail.com'
      password 'ohanatest'
      password_confirmation 'ohanatest'
      confirmed_at Time.zone.now
    end
  end
end
