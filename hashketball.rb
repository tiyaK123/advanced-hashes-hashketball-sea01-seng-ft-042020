
def game_hash
hash = {:home => {:team_name =>"Brooklyn Nets",:colors => ["Black","White"],
:players => [
  {:player_name => "Alan Anderson",
  :number => 0, 
  :shoe => 16, 
  :points => 22,
  :rebounds => 12,
:assists => 12,
:steals => 3, 
:blocks => 1, 
:slam_dunks => 1},
{:player_name => "Reggie Evans",
:number => 30, 
:shoe => 14, 
:points => 12,
:rebounds => 12,
:assists => 12,
:steals => 12, 
:blocks => 12, 
:slam_dunks => 7},
{:player_name => "Brook Lopez",
:number => 11, 
:shoe => 17, 
:points => 17,
:rebounds => 19,
:assists => 10,
:steals => 3, 
:blocks => 1, 
:slam_dunks => 15},
{:player_name => "Mason Plumlee",
:number => 1, 
:shoe => 19, 
:points => 26,
:rebounds => 11,
:assists => 6,
:steals => 3, 
:blocks => 8, 
:slam_dunks => 5},
{:player_name => "Jason Terry",
:number => 31, 
:shoe => 15, 
:points => 19,
:rebounds => 2,
:assists => 2,
:steals => 4, 
:blocks => 11, 
:slam_dunks => 1}
] },
:away => {:team_name => "Charlotte Hornets",:colors => ["Turquoise", "Purple"],
:players => [
  {:player_name => "Jeff Adrien",
  :number => 4, 
  :shoe => 18, 
  :points => 10,
  :rebounds => 1,
:assists => 1,
:steals => 2, 
:blocks => 7, 
:slam_dunks => 2},
{:player_name => "Bismack Biyombo",
:number => 0, 
:shoe => 16, 
:points => 12,
:rebounds => 4,
:assists => 7,
:steals => 22, 
:blocks => 15, 
:slam_dunks => 10},
{:player_name => "DeSagna Diop",
:number => 2, 
:shoe => 14, 
:points => 24,
:rebounds => 12,
:assists => 12,
:steals => 4, 
:blocks => 5, 
:slam_dunks => 5},
{:player_name => "Ben Gordon",
:number => 8, 
:shoe => 15, 
:points => 33,
:rebounds => 3,
:assists => 2,
:steals => 1, 
:blocks => 1, 
:slam_dunks => 0},
{:player_name => "Kemba Walker",
:number => 33, 
:shoe => 15, 
:points => 6,
:rebounds => 12,
:assists => 12,
:steals => 7, 
:blocks => 5, 
:slam_dunks => 12}
]}
}
end 

def num_points_scored(player)
  game_hash.each do |teams, info|
    info[:players].each do |person|
      if person[:player_name] == player 
        return person[:points]
      end
    end
  end
      
end 

def shoe_size(name)
  game_hash.each do |teams, info|
    info[:players].each do |person|
      if person[:player_name] == name 
        return person[:shoe]
      end
    end
  end
end

def team_colors(team)
  if team == "Brooklyn Nets"
    return game_hash[:home][:colors]
  else 
     return game_hash[:away][:colors]
   end
end

def team_names
  game_hash.map do |type, info|
    info[:team_name]
end 
end

def player_numbers(team)
  array = []
  
    game_hash.each do |type, info|
      if info[:team_name] == team
    info.each do |k, v|
      if k == :players
        v.each do |player|
      array.push(player[:number])
    end
  end
end
end
end
array
end

def player_stats(name)
  game_hash.each do |team, info|
    
    info.each do |k, v|
     if k == :players
       v.each do |player|
        if player[:player_name] == name
          player.delete(:player_name)
          return player
        end
       end
      end
    end
  end
end

def big_shoe_rebounds
  rebound = 0 
  shoe = 0 
  game_hash.each do |team, info|
    info[:players].each do |player|
      if player[:shoe] > shoe
        shoe = player[:shoe]
        rebound = player[:rebounds]
      end
    end
  end
  return rebound
end 
