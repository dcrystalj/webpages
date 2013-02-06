class Subject < ActiveRecord::Base
  attr_accessible :description, :examon, :name, :subjectid
  has_many :exams
end
