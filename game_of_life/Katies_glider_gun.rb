#########################################
#######  G L I D E R     A P P  #########
#########################################

require "./lib/cell_class.rb"
require "./lib/game_class.rb"
require "rainbow"

#####################################################
############### H E R E    W E    G O : #############
#####################################################

##################################################### Make 28 x 40 board
game = Game.new(28, 40)
# ##################################################### Makes cells in every location on board
# game.make_cells
##################################################### Make Gosper glider gun
# Left Block
game.board[5][1].alive = true
game.board[5][2].alive = true
game.board[6][1].alive = true
game.board[6][2].alive = true

game.board[5][1].age = 1
game.board[5][2].age = 1
game.board[6][1].age = 1
game.board[6][2].age = 1

# Right Block
game.board[3][35].alive = true
game.board[3][36].alive = true
game.board[4][35].alive = true
game.board[4][36].alive = true

game.board[3][35].age = 1
game.board[3][36].age = 1
game.board[4][35].age = 1
game.board[4][36].age = 1

# Columns 11-18
game.board[5][11].alive = true # 1
game.board[6][11].alive = true # 2
game.board[7][11].alive = true # 3
game.board[4][12].alive = true # 4
game.board[8][12].alive = true # 5
game.board[3][13].alive = true # 6
game.board[9][13].alive = true # 7
game.board[3][14].alive = true # 8
game.board[9][14].alive = true # 9
game.board[6][15].alive = true # 10
game.board[4][16].alive = true # 11
game.board[8][16].alive = true # 12
game.board[5][17].alive = true # 13
game.board[6][17].alive = true # 14
game.board[7][17].alive = true # 15
game.board[6][18].alive = true # 16

game.board[5][11].age = 1 # 1
game.board[6][11].age = 1 # 2
game.board[7][11].age = 1 # 3
game.board[4][12].age = 1 # 4
game.board[8][12].age = 1 # 5
game.board[3][13].age = 1 # 6
game.board[9][13].age = 1 # 7
game.board[3][14].age = 1 # 8
game.board[9][14].age = 1 # 9
game.board[6][15].age = 1 # 10
game.board[4][16].age = 1 # 11
game.board[8][16].age = 1 # 12
game.board[5][17].age = 1 # 13
game.board[6][17].age = 1 # 14
game.board[7][17].age = 1 # 15
game.board[6][18].age = 1 # 16

# Columns 21-25
game.board[3][21].alive = true # 1
game.board[4][21].alive = true # 2
game.board[5][21].alive = true # 3
game.board[3][22].alive = true # 4
game.board[4][22].alive = true # 5
game.board[5][22].alive = true # 6
game.board[2][23].alive = true # 7
game.board[6][23].alive = true # 8
game.board[1][25].alive = true # 9
game.board[2][25].alive = true # 10
game.board[6][25].alive = true # 11
game.board[7][25].alive = true # 12

game.board[3][21].age = 1 # 1
game.board[4][21].age = 1 # 2
game.board[5][21].age = 1 # 3
game.board[3][22].age = 1 # 4

game.board[4][22].age = 1 # 5
game.board[5][22].age = 1 # 6
game.board[2][23].age = 1 # 7
game.board[6][23].age = 1 # 8
game.board[1][25].age = 1 # 9
game.board[2][25].age = 1 # 10
game.board[6][25].age = 1 # 11
game.board[7][25].age = 1 # 12

##################################################### Prints board
puts "First generation:"
game.print_board
##################################################### Prompts user to continue
print "Continue? (y/n): "
input2 = gets.chomp
##################################################### Prints infinte loop of generations
counter = 1
if input2 == "y"  || input2 == "Y"
        while true
                game.call_all_cells
                game.tick
                puts "\e[H\e[2J"
                game.print_board
                counter += 1
                puts "Generation #{counter}."
                sleep 0.2
        end
###################################################### Exits if user does not want to view any more generations
else
        puts "oh"
        exit
end

#####################################################
#################### T H E    E N D #################
#####################################################