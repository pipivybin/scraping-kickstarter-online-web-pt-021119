# require libraries/modules here
require 'nokogiri'
require 'pry'


def create_project_hash
<<<<<<< HEAD
  allprojects = {}

  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
  project = kickstarter.css("li.project.grid_4")
  project.each do
  |project|
  allprojects[project.css("h2.bbcard_name strong a").text.to_sym] = {
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description => project.css("p.bbcard_blurb").text,
      :location => project.css("ul.project-meta span.location-name").text,
      :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
    }
end
  allprojects
end



# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css("ul.project-meta span.location-name").text
# percentage: project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i

=======


  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  kickstarter.css("li.project grid_4")
binding.pry


end
>>>>>>> 7fe76edd9ca67a81ecd2cd8eee2017a30d226b63

create_project_hash
