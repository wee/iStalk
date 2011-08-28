class UsersController < ApplicationController
#  t.string :firstname, :lastname, :school, :sports, :pot, :vegan, :politics, :lat, :long
  def index
    users = User.all
    unless params[:school].blank?
      users.select! do |user|
        user.school and user.school.split(',').map(&:downcase).include?(params[:school].downcase)
      end
    end
    unless params[:sports].blank?
      users.select! do |user|
        user.sports and user.sports.split(',').map(&:downcase).include?(params[:sports].downcase)
      end
    end
    unless params[:pot].blank?
      users.select! do |user|
        user.pot == params[:pot]
      end
    end
    unless params[:vegan].blank?
      users.select! do |user|
        user.vegan == params[:vegan]
      end
    end
    unless params[:politics].blank?
      users.select! do |user|
        user.politics == params[:politics]
      end
    end
    return_json(users)
  end

  def show
    if params[:id] == 'stats'
      users = User.all
      all_interests = {}
      users.map do |user|
        interests = user.interests.split(',')
        interests.each do |interest|
          count = all_interests[interest]
          if count
            all_interests[interest] = all_interests[interest] + 1
          else
            all_interests[interest] = 1
          end
        end
      end
      return_json all_interests
    end
  end

  private
  def return_json(results)
    if params[:callback].blank?
      render json: results
    else
      results = "#{params[:callback]}(#{results.to_json});"
      render :text => results
    end
  end
end
