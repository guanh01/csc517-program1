== README

Class Portal Web Application using Ruby on Rails


* Ruby version: 4.2.2

* System dependencies: see Gemfile

* Configuration: 

| User Type    | Name           | Email                     | Password     |
|--------------|----------------|---------------------------|--------------|
| Admin        |  Super admin   | superadmin@example.com    | "password"   | 
| Instructor   | Instructor one | instructorone@example.com | "password"   | 
| Student      |  Student one   | studentone@example.com    | "password"   | 

* Database creation:
 - User
 - Admin (subclass of User)
 - Student (subclass of User)
 - Instructor (subclass of User)
 - Course
 - Material
 - Teachment (relationship between Instructor and Course)
 - Enrollment (relationship between Student and Course)


* Database initialization:

 - bundle exec rake db:migrate
 - bundle exec rake db:rollback
 - bundle exec rake db:migrate VERSION=0
 - heroku pg:reset DATABASE
 - heroku run rake db:seed
 - heroku restart


* Deployment instructions:

 - rails server -b $IP -p $PORT (on cloud9)
 - rails server (on local computer)
 
* Description of edge cases
 - Instructors cannot be deleted if it is the only instructor in a course
 - Super admin profile cannot be modified
 - A student can be deleted even though he is enrolled in a course
 - An instructor can be deleted even though he is in charge of some courses. However, if the instructor is the only instructor for a course, he cannot be deleted by admins. 
