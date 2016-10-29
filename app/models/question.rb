class Question < ActiveRecord::Base

validates :title, presence: true, length: { minimum: 3, maximum: 100}
validates :body, presence: true, length: { minimum: 3, maximum: 500}



end 