# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Departments
d1 = Department.create(:key=>'4011', :name=>'Software Engineering - Graduate')
d2 = Department.create(:key=>'4010', :name=>'Software Engineering')
d3 = Department.create(:key=>'4003', :name=>'Computer Science')
d4 = Department.create(:key=>'4002', :name=>'Information Sciences & Technologies') 

# Courses
c1 = Course.create(:department => d2, :key=>'362',:name=>'ENG OF SOFTWARE SUBSYS', :description=>'An introduction to the principles of the foundations of contemporary')
c2 = Course.create(:department => d1, :key=>'361',:name=>'SOFTWARE ENGINEERING INTRODUCTION', :description=>'An introduction to SE')
c3 = Course.create(:department => d2, :key=>'701',:name=>'SOFTWARE ENG PRACT II', :description=>'A project course where students practice what they have learned or are learning in class through directed study.')
c4 = Course.create(:department => d2, :key=>'720',:name=>'SOFTWARE EVOL & REENG', :description=>'This course explores the concepts of software evolution and re')

# Professor
p1 = Professor.create(:name=>'J Scott Hawker', :description=>'SE Factulty', :degrees=>'Ph.D Electrical Engineering');
p2 = Professor.create(:name=>'Kenneth Martinez', :description=>'SE Lecturer', :degrees=>'')
p3 = Professor.create(:name=>'Stephanie Ludi', :description=>'SE Coordinator', :degrees=>'Ph. D Computer Science')
p4 = Professor.create(:name=>'Reddy Raghu', :description=>'SE Factulty', :degrees=>'')
p5 = Professor.create(:name=>'Michael Lutz', :description=>'Professor', :degrees=>'M.S. in Computer Science')


# Sections
s1 = Section.create(:course => c1, :professor => p1) 
s2 = Section.create(:course => c2, :professor => p2)
s3 = Section.create(:course => c3, :professor => p3)
s4 = Section.create(:course => c4, :professor => p4)
s5 = Section.create(:course => c1, :professor => p5)

# Users
adminUser = User.create(:login => "axm7988", :password => "1234", :password_confirmation => "1234")

# Smart Review
sr = SmartReview.create(:user => adminUser, :section => s1)

# Profesor Review
pr = ProfessorReview.create(:smart_review => sr, :comment => 'Prof', :difficulty => 3, :mood=> 1, :teaching_skill=>4, :exams_difficulty=> 1, :helpfulness=>5)

# Course Review
cr = CourseReview.create(:smart_review => sr, :comment => 'Cour', :difficulty => 3, :usefulness=>5, :content=>5, :time_spent=>4, :recommend=>5)




