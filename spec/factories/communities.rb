FactoryGirl.define do
  factory :community do
    user {User.all.sample}
    organization {Organization.all.sample}
  end
end
