class Article < ActiveRecord::Base
	belongs_to(:article)
	validates :title ,presence: true 
	validates :description ,presence: true, length:{ minimum: 3}

	   

end