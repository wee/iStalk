class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname, :lastname, :school, :sports, :pot, :vegan, :politics, :lat, :long
    end
  end
end
