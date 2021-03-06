module Associators::StudentsToClassrooms

  def self.run(student, classroom)
    student.students_classrooms.find_or_create_by(student_id: student.id, classroom_id: classroom[:id])
    student.reload
    student.assign_classroom_activities
    student
  end

end
