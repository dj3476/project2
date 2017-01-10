FactoryGirl.define do 
	factory :comment do
		rating 3
		body "Excelent"
		association :user, strategy: :build
		association :product, strategy: :build
	end
end
