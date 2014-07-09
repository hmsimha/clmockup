class StaticPagesController < ActionController::Base
  def home
  end

  def category
    render params[:category]
  end

  def id
    render params[:id]
  end
end