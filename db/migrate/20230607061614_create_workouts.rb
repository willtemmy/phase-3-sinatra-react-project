class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :exercises
      t.datetime :created_at, default: Time.now
      t.datetime :updated_at, default: Time.now

      # t.integer :user_id
    end
  end
end
