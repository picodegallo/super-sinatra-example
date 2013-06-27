class Team

  attr_accessor :name, :motto
  attr_reader :hero

  def initialize
    @hero = []
  end

  def add_hero(heros)
    @hero << heros
  end

  def self.create(params)
    team = Team.new
    team.name = params[:team][:name]
    team.motto = params[:team][:motto]

    params[:team][:hero].each do |heros|
      indiv_hero = Hero.new
      indiv_hero.name = heros[:name]
      indiv_hero.power = heros[:power]
      indiv_hero.bio = heros[:bio]
      team.add_hero(indiv_hero) 
    end
    return team
  end

end