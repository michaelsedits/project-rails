class Klass < ActiveRecord::Base
  attr_accessible :name, :semester_id, :student_id, :teacher_id
  
  has_and_belongs_to_many :students
  belongs_to :teacher
  belongs_to :semester
end
