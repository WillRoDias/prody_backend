class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.belongs_to :users , null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
