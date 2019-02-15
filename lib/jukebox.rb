require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(array)
  
  array.each_with_index do |value, index|
    puts "#{index + 1}. #{value}"
  end 
end

def play(array)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
    array.each_with_index do |value, index|
      if user_response == value || user_response.to_i == index + 1
        puts "Playing #{value}"
      else
        puts "Invalid input, please try again"

      end 
    end
end

def exit_jukebox
  puts "Goodbye"
end 


def run
  help
  x = ""
    until x == "exit" do
    puts "Please enter a command:"
    x = gets.chomp
    
      if x == "help"
      help
      elsif x == "list"
      list
      elsif x == "play"
      play
    
      end 
    end
    exit_jukebox
end










