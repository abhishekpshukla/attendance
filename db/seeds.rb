# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

User.create(:login => "admin", :password => "admin", :password_confirmation => "admin", :is_admin => true, :email => "abhishek@example.com")

designation = [ "Software Developer", "Team Lead", "Tech Lead",  "System Analyst", "Tech Architect", "Database Architect", "Database Designer",
                "Project Lead", "Testing Engineer", "Product Manager", "Web Graphic", "Web Designer", "Release Manager", "DBA", "Network Administator",
                "System Administator", "System Security", "Tech Support Engineer", "Maintenance Engineer", "Webmaster", "IT/Networking Manager",
                "Information Systems(MIS)-Manager", "System Integration Techician", "Business Analyst", "Datawarehousing Technician", "Outside Technical Consultant",
                "Functional Outside Consultant", "EDP Analyst", "Technical Writer", "Instructional Designer", "Technical Documentor", "QA/QC Exec", "QA/QC Manager",
                "Project Manager-IT/Software", "Program Manager", "Head/VP/GM-Quality", "Head/VP/GM-Technology(IT)/CTO", "Trainer/Faculty", "Trainee",
                "Fresher", "Outside Consultant", "IT/Technical Content Developer" ]
designation.each { |d| Designation.create(:name => d) }