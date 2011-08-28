class UserController < ApplicationController
#  t.string :firstname, :lastname, :school, :sports, :pot, :vegan, :politics, :lat, :long

  def create
    user = User.find_by_firstname_and_lastname(params[:firstname], params[:lastname])
    if user
      user.update_attributes!(other_params(params))
      user.save!
    else
      User.create!(other_params(params).merge(:firstname => params[:firstname],
                                              :lastname => params[:lastname]))
    end
    render :nothing => true
  end

  private
  def other_params(params)
    { :lat => params[:lat],
      :long => params[:long],
      :school =>params[:school],
      :sports => params[:sports],
      :pot =>params[:pot],
      :vegan => params[:vegan],
      :politics=>params[:politics] }
  end
end