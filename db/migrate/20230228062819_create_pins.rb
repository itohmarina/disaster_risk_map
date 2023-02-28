class CreatePins < ActiveRecord::Migration[6.1]
  def change
    create_table :pins do |t|
      t.string :name, presence: true
      t.string :body, presence: true
      t.float :lat, presence: true
      t.float :lng, presence: true

      t.timestamps
    end
  end
end
