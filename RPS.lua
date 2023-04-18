local End = false --basically a debounce thing
local usrPnts = 0 --score for user
local aiPnts = 0 --point for AI program
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
    print("The current score is "..usrPnts.."-"..aiPnts)--print score
    for i = 1,5 do
        print(                            ) --add spacing so everything that was printed isn't so cluttered
        end 



    io.write("Will you choose Rock, Paper, or will it be Scissors? ") --ask the player what they want to play
    local userSelection = string.lower(io.read())--listen for player's input and convert it into lowercase

    local aiSelection --variable for the choice of the AI

if userSelection == "rock" or userSelection == "r" or userSelection == "paper" or userSelection == "p" or userSelection == "scissors" or userSelection == "s" then --gotta make sure that the player actually put in rock, paper or scissors
    for i = 1,5 do
        print(                            )--add spacing so everything that was printed isn't so cluttered
        end
    print("Let's play ROCK, PAPER, SCISSOR") --Message to start game
    wait(1)
    for i = 1,5 do
        print(                            )--add spacing so everything that was printed isn't so cluttered
        end
  print("Your weapon of choice... "..userSelection.."!")
  wait(1)
    math.randomseed(os.time()) --establish a random seed based on os.time()
    local pick = math.random(1,3)
    if pick == 1 then --program makes its choice
				aiSelection = "rock"
    elseif pick == 2 then
				aiSelection = "paper"
    elseif pick == 3 then
        aiSelection = "scissors"
    end
    for i = 1,5 do
        print(                            )--add spacing so everything that was printed isn't so cluttered
        end
  print("Computer picked... "..aiSelection.."!") -- print what the program picked
  wait(1)
  for i = 1,5 do
    print(                            )--add spacing so everything that was printed isn't so cluttered
    end
    if aiSelection == "rock" and userSelection == "rock" or userSelection == "r" then  --logic for gameplay
        print("Tie...")
          elseif aiSelection == "paper" and userSelection == "paper" or userSelection == "p" then
        print("Tie...")  --print who won
            elseif aiSelection == "scissors" and userSelection == "scissors" or userSelection == "s" then
        print("Tie...")  --print who won
                    elseif aiSelection == "scissors" and userSelection == "rock" or userSelection == "r" then
        print("You win!")  --print who won
        usrPnts = usrPnts + 1 --update player's score
                    elseif aiSelection == "rock" and userSelection == "paper" or userSelection == "p" then
        print("You win!")  --print who won
        usrPnts = usrPnts + 1 --update player's score
                    elseif aiSelection == "paper" and userSelection == "scissors" or userSelection == "s" then
        print("You win!")  --print who won
        usrPnts = usrPnts + 1 --update player's score
                    elseif aiSelection == "scissors" and userSelection == "paper" or userSelection == "p" then
        print("Computer wins!")  --print who won
        aiPnts = aiPnts + 1 --update program's score
                    elseif aiSelection == "paper" and userSelection == "rock" or userSelection == "r" then
        print("Computer wins!")  --print who won
        aiPnts = aiPnts + 1 --update program's score
                    elseif aiSelection == "rock" and userSelection == "scissors" or userSelection == "s" then
        print("Computer wins!")  --print who won
        aiPnts = aiPnts + 1 --update program's score
                    end        
        Game = Game + 1 --update game number
    else
        print("You can't play "..userSelection..", silly!") --tell the player that they can't play whatever isn't a rock, a piece of paper, or scissors
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
