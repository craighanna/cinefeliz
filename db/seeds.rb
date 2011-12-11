# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Project.delete_all
Project.create(:title => 'Me, Myself, y Yo',
               :description => 
                %{<p>A Documentary following 7 Chicano sixth graders 
                  through adolescence with a focus on their evolving 
                  identity living on both sides of the border.</p>})

Project.create(:title => 'Guerita',
               :description =>
                %{<p>A comedy shot in Mexico about a girl who grows 
                  up in the shadow of her younger, blonde sister.</p>})
