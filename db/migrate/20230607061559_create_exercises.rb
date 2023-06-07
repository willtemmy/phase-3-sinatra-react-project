class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.belongs_to :workout, index: true
      t.string :name
      t.string :type
      t.string :muscle
      t.string :equipment
      t.integer :sets
      t.integer :reps
      t.string :instructions

    end
  end
end
