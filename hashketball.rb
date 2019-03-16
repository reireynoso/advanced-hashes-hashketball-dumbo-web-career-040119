require "pry"

# Write your code here!
def game_hash
  basketball = {
    :home => {
      :team_name => "Brooklyn Nets" ,
      :colors => ["Black","White"],
      :players => {
        "Alan Anderson" => 
          {
            :number => 0,
            :shoe => 16,
            :points => 22,
            :rebounds => 12,
            :assists => 12,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 1 
          },
          "Reggie Evans" =>
          {
            :number => 30,
            :shoe => 14,
            :points => 12,
            :rebounds => 12,
            :assists => 12,
            :steals => 12,
            :blocks => 12,
            :slam_dunks => 7 
          },
          "Brook Lopez" =>
          {
            :number => 11,
            :shoe => 17,
            :points => 17,
            :rebounds => 19,
            :assists => 10,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 15 
          },
          "Mason Plumlee" =>
          {
            :number => 1,
            :shoe => 19,
            :points => 26,
            :rebounds => 12,
            :assists => 6,
            :steals => 3,
            :blocks => 8,
            :slam_dunks => 5 
          },
          "Jason Terry" =>
          {
            :number => 31,
            :shoe => 15,
            :points => 19,
            :rebounds => 2,
            :assists => 2,
            :steals => 4,
            :blocks => 11,
            :slam_dunks => 1 
          }
        }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise","Purple"],
      :players => {
        "Jeff Adrien" =>
          {
            :number => 4,
            :shoe => 18,
            :points => 10,
            :rebounds => 1,
            :assists => 1,
            :steals => 2,
            :blocks => 7,
            :slam_dunks => 2 
          },
          "Bismak Biyombo" =>
          {
            :number => 0,
            :shoe => 16,
            :points => 12,
            :rebounds => 4,
            :assists => 7,
            :steals => 7,
            :blocks => 15,
            :slam_dunks => 10 
          },
          "DeSagna Diop" =>
          {
            :number => 2,
            :shoe => 14,
            :points => 24,
            :rebounds => 12,
            :assists => 12,
            :steals => 4,
            :blocks => 5,
            :slam_dunks => 5 
          },
          "Ben Gordon" =>
          {
            :number => 8,
            :shoe => 15,
            :points => 33,
            :rebounds => 3,
            :assists => 2,
            :steals => 1,
            :blocks => 1,
            :slam_dunks => 0 
          },
          "Brendan Haywood" =>
          {
            :number => 33,
            :shoe => 15,
            :points => 6,
            :rebounds => 12,
            :assists => 12,
            :steals => 22,
            :blocks => 5,
            :slam_dunks => 12 
          }
       }
    }
  }

end

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
      team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        binding.pry
 
        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        data.each do |data_item|
            binding.pry
      end
    end
  end
end

def num_points_scored(player_name)
  basketball = game_hash
  basketball.each do |teams,team_data|
    team_data.each do |category, info|
      if category == :players
         info.each do |key,value|
           if key == player_name
             value.each do |stats,num|
               if stats == :points
                 return num
               end
             end
           end
         end
      end
    end
  end
end

def shoe_size(player_name)
  basketball = game_hash
  basketball.each do |teams,team_data|
    team_data.each do |category,info|
      if category == :players
        info.each do |key,value|
          if key == player_name
            value.each do |stats,num|
              if stats == :shoe
                return num
              end
            end
          end
        end
      end
    end
  end
end

def team_colors(team)
  basketball = game_hash
  basketball.each do |teams,team_data|
    team_data.each do |category,info|
      if info == team
        team_data.each do |category,info|
          if category == :colors
            return info
          end
        end
      end
    end
  end
end

def team_names
  arr = []
  game_hash.each do |location,team_data|
     team_data.each do |category,data|
       if category == :team_name
         arr << data
       end
     end
  end
  return arr
end

def player_numbers(team_name)
  arr = []
  game_hash.each do |location,team_data|
    team_data.each do |category,info|
      if info == team_name
        team_data.each do |category,info|
          if category == :players
            info.each do |players,stats|
              stats.each do |stat,num|
                if stat == :number
                  arr << num
                end
              end
            end
          end
        end
      end
    end
  end
  return arr
end

def player_stats(player)
  game_hash.each do |location,team_data|
    team_data.each do |category,info|
      if category == :players
        info.each do |players,stats|
          if players == player
            return stats
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  biggest_shoe_size = 0
  rebounds = 0
  game_hash.each do |location,team_data|
    team_data.each do |category,info|
      if category == :players
        info.each do |players,stats|
          stats.each do |name,num|
            if name == :shoe 
              if biggest_shoe_size < num
                biggest_shoe_size = num
                stats.each do |name,num|
                  if name == :rebounds
                    rebounds = num
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  return rebounds
end

def most_points_scored
    player = ""
    most_points = 0 
    game_hash.each do |location,team_data|
      team_data.each do |category,info|
        if category == :players
          info.each do |players,stats|
            stats.each do |name,num|
              if name == :points
                if most_points < num 
                  most_points = num
                end
              end
            end
          end
        end
      end
    end
    #puts player
  end
  
  most_points_scored


