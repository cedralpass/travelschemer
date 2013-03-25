class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.text :body
      t.boolean :public

      t.timestamps
    end
  end
end
