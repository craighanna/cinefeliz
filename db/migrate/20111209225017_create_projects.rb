class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :trailer_url

      t.timestamps
    end
  end
end
