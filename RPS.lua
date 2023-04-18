local End = false --basically a debounce thing
local usrPnts = 0 --score for user
local comScore = 0 --point for AI program
local Game = 1 --game number

function wait(seconds) --function that adds a wait() function similar to the one in Roblox's Lua
    local start = os.time()
    repeat until os.time() > start + seconds
end

function game() --the entirety of the game is in a function so it can easily be called if the player wants to play again
    for i = 1,30 do -- clear out last game
    print(                            )

    end
    print("This is Game #"..Game) --print the number of the current game
    print("The current score is "..usrPnts.."-"..comScore)--print score
    for i = 1,5 do
        print(                            ) --add spacing so everything that was printed isn't so cluttered
        end 



    io.write("Will you choose Rock, Paper, or will it be Scissors? ") --ask the player what they want to play
    local choice = string.lower(io.read())--listen for player's input and convert it into lowercase

    local comChoice --variable for the choice of the AI

if choice == "rock" or "r" or choice == "paper" or "p" or choice == "scissors" or "s" then --gotta make sure that the player actually put in rock, paper or scissors
    for i = 1,5 do
        print(                            )--add spacing so everything that was printed isn't so cluttered
        end
    print("Let's play ROCK, PAPER, SCISSOR") --Message to start game
    wait(1)
    for i = 1,5 do
        print(                            )--add spacing so everything that was printed isn't so cluttered
        end
  print("Your weapon of choice... "..choice.."!")
  wait(1)
    math.randomseed(os.time()) --establish a random seed based on os.time()
    local pick = math.random(1,3)
    if pick == 1 then --program makes its choice
        comChoice = "rock"
    elseif pick == 2 then
        comChoice = "paper"
    elseif pick == 3 then
        comChoice = "scissors"
    end
    for i = 1,5 do
        print(                            )--add spacing so everything that was printed isn't so cluttered
        end
  print("Computer picked... "..comChoice.."!") -- print what the program picked
  wait(1)
  for i = 1,5 do
    print(                            )--add spacing so everything that was printed isn't so cluttered
    end
    if comChoice == "rock" and choice == "rock" or "r" then  --logic for gameplay
        print("Tie...")
          elseif comChoice == "paper" and choice == "paper" or "p" then
        print("Tie...")  --print who won
            elseif comChoice == "scissors" and choice == "scissors" or "s" then
        print("Tie...")  --print who won
                    elseif comChoice == "scissors" and choice == "rock" or "r" then
        print("You win!")  --print who won
        usrPnts = usrPnts + 1 --update player's score
                    elseif comChoice == "rock" and choice == "paper" or "p" then
        print("You win!")  --print who won
        usrPnts = usrPnts + 1 --update player's score
                    elseif comChoice == "paper" and choice == "scissors" or "s" then
        print("You win!")  --print who won
        usrPnts = usrPnts + 1 --update player's score
                    elseif comChoice == "scissors" and choice == "paper" or "p" then
        print("Computer wins!")  --print who won
        comScore = comScore + 1 --update program's score
                    elseif comChoice == "paper" and choice == "rock" or "r" then
        print("Computer wins!")  --print who won
        comScore = comScore + 1 --update program's score
                    elseif comChoice == "rock" and choice == "scissors" or "s" then
        print("Computer wins!")  --print who won
        comScore = comScore + 1 --update program's score
                    end        
        Game = Game + 1 --update game number
    else
        print("You can't play "..choice..", silly!") --tell the player that they can't play whatever isn't a rock, a piece of paper, or scissors
    end
wait(1)
    End = true -- we've reached the end of the game, so set this variable to true to ask player if they want to play again
end

print([[Welcome to Rock Paper Scissors!]])
wait(2) --wait function. refer to the comment at the start of the program for the wait function

game() --call the function for starting the game
while true do --start a loop
if End == true then 
    End = false --debounce
    for i = 1,5 do
        print(                            ) --add spacing so everything that was printed isn't so cluttered
        end
    io.write("Play another? (y/n) ")-- ask player if they want to play again
        local yN = string.lower(io.read()) -- listen for player's input and convert it into lowercase
        if yN == "y" then 
    game() -- restart game
        else
            print("Alright lightweight!") -- assume the player doesn't want to play anymore
            wait(2)
        break -- break out of while true loop, ending the program
end
end 
end
