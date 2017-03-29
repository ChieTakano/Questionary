class QuestionaryResult < ActiveRecord::Base
	belongs_to :questionary

	validates :result, presence: {message:'は、必須項目です。'}
end
