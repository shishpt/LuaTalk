--Create random number generator (randomseed based on time)
math.randomseed(os.time())
number = math.random(1,100)

--Create player and store # of guesses
user = {}
user.guess = 0

--print(number) --debugger (shows the AI number select)

--logic for hig, low and exact
while ( user.guess ~= number ) do
	print("Guess a number between 1 and 100")
	user.answer = io.read()
	user.guess = tonumber(user.answer) 

	if ( user.guess > number ) then
		print("Too high")
	elseif ( user.guess < number ) then
		print("Too low")
	else
		print("That's right")
		os.exit() -- close app when correct number is guessed
	end
end
