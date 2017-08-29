class PortifolioController < ApplicationController
  def index
    @skills = Skill.all
    @projects = Project.all
    @references = Reference.all
  end
end
