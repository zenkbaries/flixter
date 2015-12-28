FactoryGirl.define do  
	# factory :enrollment do
    
 #  end

	factory :user do
		email "test@test.com"
		password "password"
		password_confirmation "password"
	end
end


FactoryGirl.define do  
	# factory :enrollment do
    
 #  end

	factory :course do
		title "TitleOne"
		description "DescriptionOne"
		cost "10.00"
		association :user
	end
end




