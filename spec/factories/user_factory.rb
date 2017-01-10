FactoryGirl.define do 
	sequence(:email) { |n| "user#{n}@example.com"}

	factory :user do 
		email 
		password "dj123456"
	end

	factory :admin, class: User do 
		email 
		password "dj123456"
		admin true
		first_name "Admin"
		last_name "User"
	end
end
