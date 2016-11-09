class Superstar < ActiveRecord::Migration[5.0]
  def change
    create_table :superstar do |table|
      table.string :name
      table.string :outfit
      table.string :talent
    end
  end
end
