class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      # setting up the foreign key relationship between the workouts table and the users table
      t.belongs_to :user, index: true
      t.string :title
      t.text :description
      t.datetime :created_at, default: Time.now
      t.datetime :updated_at, default: Time.now

      # t.integer :user_id
    end
  end
end
