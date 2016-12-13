class Plan < ActiveRecord::Base
	has_many :plan_date, 		  dependent: :destroy
	has_many :plan_place, 		  dependent: :destroy
	has_many :plan_budget, 		  dependent: :destroy
	has_many :plan_num_of_people, dependent: :destroy
	has_many :plan_detail, 		  dependent: :destroy

	accepts_nested_attributes_for :plan_date,
								  :plan_place,
								  :plan_budget,
								  :plan_num_of_people,
								  :plan_detail
end
