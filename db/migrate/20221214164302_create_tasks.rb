class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.belongs_to :users
      t.string :name

      t.timestamps
    end
  end
end
