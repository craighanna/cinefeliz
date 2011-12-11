class ChangeDataTypeForDescription < ActiveRecord::Migration
  def up
    change_table :projects do |p|
      p.change :description, :text
    end
  end

  def down
    change_table :projects do |p|
      p.change :count, :string
    end
  end
end
