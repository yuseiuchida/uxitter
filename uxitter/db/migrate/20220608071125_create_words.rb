class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :input, null: false
      t.string :output, null: false
      t.timestamps
    end
  end
end
