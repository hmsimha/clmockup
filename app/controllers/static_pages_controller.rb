class StaticPagesController < ActionController::Base
  def home
  end

  def category
    @category = params[:category]
    @pagetitle = {'ppa' => "Appliances", "pet" => "Pets", "etc" => "Etc"}[@category]
    @listing1 = Listing.where(category: @category).first
    @listing2 = Listing.where(category: @category).last
    return @listing1 ? render('category') : render(status: 404)
  end
end