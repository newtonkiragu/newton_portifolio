class PortifolioController < ApplicationController
  def index
    @skills = Skill.all
  end
end
