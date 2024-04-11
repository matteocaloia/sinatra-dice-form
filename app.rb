require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "

  erb(:main)

end


get("/process_roll") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  @num_dice = params.fetch("dice").to_i
  @sides = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@sides)
    @rolls.push(die)
  end

  erb(:flexible)


end

