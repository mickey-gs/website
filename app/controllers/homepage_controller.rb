class HomepageController < ApplicationController
  def index
    @education = Education.all.sort do |a, b|
      if a.received_date.nil?
        b.received_date.nil? ? 0 : 1
      elsif b.received_date.nil?
        1
      else
        b.received_date <=> a.received_date
      end
    end
    @experience = Experience.all.sort do |a, b|
      if a.start_date.nil?
        b.start_date.nil? ? 0 : 1
      elsif b.start_date.nil?
        1
      else
        b.start_date <=> a.start_date
      end
    end
  end
end
