puts "🌱 Seeding spices..."

# Seed your database here
Exercise.create([
  {name: "Bench Press",sets: 4,reps: 8},
  {name: "Squat",sets: 3,reps: 10},
  {name: "Plank",sets: 3,reps: 60},
  {name: "Incline Hammer Curls", sets: 3,reps: 15},
  {name: "Wide-grip barbell curl",sets: 3,reps: 10},
  {name: "EZ-bar spider curl",sets: 4,reps: 8},
  {name: "Hammer Curls", sets: 4, reps: 8}
])

User.create([
  { name: "MarkJohnson", email: "markjohnson@yahoo.com"},
  { name: "MichaelBrown", email: "michaelbrown@outlook.com" },
  { name: "JessicaTaylor", email: "jessicataylor@yahoo.com" },
  { name: "OliviaAnderson", email: "oliviaanderson@gmail.com"}
])

Workout.create([
  { title: "Chest", exercises: "Bench Press" },
  { title: "Leg",  exercises: "Squat" },
  { title: "Arm",  exercises: "Hammer Curls" }
])




puts "✅ Done seeding!"
