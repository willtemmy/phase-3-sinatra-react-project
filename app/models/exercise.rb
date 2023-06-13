class Exercise < ActiveRecord::Base
    belongs_to :workout
  
    def self.find_exercises_id(exercise_id)
      Exercise.where(exercise_id: exercise_id)
    end
  end
  