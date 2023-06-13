require 'rack/cors'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  use Rack::Cors do
    allow do
      origins 'http://localhost:3000' 
      resource '*', headers: :any, methods: [:get, :post, :patch, :delete, :options]
    end
  end

  get '/workout' do
    workout = Workout.all
    workout.to_json
end

get '/exercise' do
  exercises = Exercise.all
  exercises.to_json
end

post '/workout' do
  begin
    workout = params[:workout]

    workout = Workout.create!(workout)

      # Create the exercises 
      exercises_params.each do |exercise_params|
        exercises.create!(exercise_params)
      end
    end
    status 201
          workout.to_json(include: { include: :exercises })
        rescue StandardError => e
          status 500
          { error: e.message }.to_json
        end
      end


      patch '/workoutplans/:id' do
        workout_plan = WorkoutPlan.find(params[:id])
      
        # Update the workout attributes
        workout_plan.update(params[:workout])
        workout.to_json(include: { include: :exercises })
      end


      delete '/workout/:id' do
        workout = Workout.find(params[:id])
        workout.destroy
        { message: 'Workout deleted' }.to_json
    end 

end
