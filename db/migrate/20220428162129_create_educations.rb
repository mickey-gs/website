class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :title
      t.string :location
      t.date :received_date
      t.text :description

      t.timestamps
    end
  end
end
