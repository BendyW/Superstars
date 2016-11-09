class Fairytale < ActiveRecord::Migration[5.0]
  def change
    create_table :fairytale do |table|
      table.string :title
      table.string :author
      table.string :comments
      table.string :morale
    end
  end
end
