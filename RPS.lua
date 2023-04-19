local End = false --debounce
local usrPnts = 0 --point tracker for user
local aiPnts = 0 --point tracker for AI program
local Game = 1 --game number

function wait(seconds) --wait function seconds
    local start = os.time()
    repeat until os.time() > start + seconds
end

function game() --game in function so it can be called
    for i = 1,30 do -- empty stats last game
    print(                            )

    end
    print("This is Game #"..Game) --print the number of the current game
    print("The current score is "..usrPnts.."-"..aiPnts)--print score
    for i = 1,5 do
        print(                            ) --add spacing
        end 



    io.write("Will you choose Rock, Paper, or will it be Scissors? ") --user selection
    local userSelection = string.lower(io.read())--listen input and convert to lowercase

    local aiSelection --variable for the choice of the AI

if userSelection == "rock" or userSelection == "r" or userSelection == "paper" or userSelection == "p" or userSelection == "scissors" or userSelection == "s" then --user selection of rock, paper or scissors
    for i = 1,5 do
        print(                            )--add spacing 
        end
    print("Let's play ROCK, PAPER, SCISSOR") --Message to start game
    wait(1)
    for i = 1,5 do
        print(                            )--add spacing
        end
  print("Your weapon of choice... "..userSelection.."!")
  wait(1)
    math.randomseed(os.time()) --establish a random seed based on os.time()
    local pick = math.random(1,3)
    if pick == 1 then --AI makes selection
				aiSelection = "rock"
    elseif pick == 2 then
				aiSelection = "paper"
    elseif pick == 3 then
        aiSelection = "scissors"
    end
    for i = 1,5 do
        print(                            )--add spacing
        end
  print("Computer picked... "..aiSelection.."!") -- print AI selection
  wait(1)
  for i = 1,5 do
    print(                            )--add spacing
    end
  --logic for gameplay
    if aiSelection == "rock" and userSelection == "rock" then
        print("Tie...") --print result
          elseif aiSelection == "paper" and userSelection == "paper" then
        print("Tie...")
            elseif aiSelection == "scissors" and userSelection == "scissors" then
        print("Tie...")
                    elseif aiSelection == "scissors" and userSelection == "rock" then
        print("You win!")  --print who won
        usrPnts = usrPnts + 1 --update user score
                    elseif aiSelection == "rock" and userSelection == "paper" then
        print("You win!")
        usrPnts = usrPnts + 1
                    elseif aiSelection == "paper" and userSelection == "scissors" then
        print("You win!")
        usrPnts = usrPnts + 1
                    elseif aiSelection == "scissors" and userSelection == "paper" then
        print("Computer wins!")
        aiPnts = aiPnts + 1 --update AI score
                    elseif aiSelection == "paper" and userSelection == "rock" then
        print("Computer wins!")
        aiPnts = aiPnts + 1
                    elseif aiSelection == "rock" and userSelection == "scissors" then
        print("Computer wins!")
        aiPnts = aiPnts + 1
                    end
        Game = Game + 1 --update game number
    else
        print("WHAT!! "..userSelection..", thats like bringing a gun to a knife fight") --tell the player that they can't play whatever isn't a rock, a piece of paper, or scissors
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
