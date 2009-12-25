# CREATED BY: ABHISHEK SHUKLA
# CREATED ON: 25TH DEC 2009 [merry christmas :)]

Then /^Admin should see the employee registration form$/ do
  #response.should have_tag("form[action=?][method=post]", admin_employees_path) do
    Given "I have a list of designation"
  #end
end

When /^I select "([^\"]*)" as "([^\"]*)"$/ do |field, option|
  select option, :from => field
end

When /^I have a list of designation$/ do
  designation = [ "Software Developer", "Team Lead", "Tech Lead",  "System Analyst", "Tech Architect", "Database Architect", "Database Designer",
            "Project Lead", "Testing Engineer", "Product Manager", "Web Graphic", "Web Designer", "Release Manager", "DBA", "Network Administator",
            "System Administator", "System Security", "Tech Support Engineer", "Maintenance Engineer", "Webmaster", "IT/Networking Manager",
            "Information Systems(MIS)-Manager", "System Integration Techician", "Business Analyst", "Datawarehousing Technician", "Outside Technical Consultant",
            "Functional Outside Consultant", "EDP Analyst", "Technical Writer", "Instructional Designer", "Technical Documentor", "QA/QC Exec", "QA/QC Manager",
            "Project Manager-IT/Software", "Program Manager", "Head/VP/GM-Quality", "Head/VP/GM-Technology(IT)/CTO", "Trainer/Faculty", "Trainee",
            "Fresher", "Outside Consultant", "IT/Technical Content Developer" ]
  if Designation.all.blank?
    designation.each do |d|
      Factory.create(:designation, :name => d)
    end
  end
end

