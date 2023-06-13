class Workout < ActiveRecord::Base
    belongs_to :user
    has_many :exercises

    # def total_exercises
    #   exercises.count
    # end

    def self.with_exercise(exercise_id)
      joins(:exercises).where('exercises.id = ?', exercise_id)
    end
  end
  