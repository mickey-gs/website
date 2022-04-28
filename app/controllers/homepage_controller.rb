class HomepageController < ApplicationController
  def index
    @education = Education.all
    @experience = Experience.all
  end
end
