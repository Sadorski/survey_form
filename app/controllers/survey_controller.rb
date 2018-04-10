class SurveyController < ApplicationController
  def index
  end

  def result
  end

  def create
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
    flash[:notice] = "Thanks for submitting this form! You have submitted this form #{session[:counter]} times now."
    session['name'] = params['name']
    session['loc'] = params['loc']
    session['lang'] = params['lang']
    session['comment'] = params['comment']
    redirect_to '/result'

  end
end
