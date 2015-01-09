class CreaturesController < ApplicationController

  def index
    @hair = "~~~~~~~~"
    @eyeball = " ☼ "
    @nose = " ⚘ "
    @creature_list = Creature.all
  end

  def create
    @creature = Creature.new(params.require(:creature).permit(:name, :description))
    @creature.save
    redirect_to @creature
  end

  def show
    @creature = Creature.find(params.require(:id))
  end
end
