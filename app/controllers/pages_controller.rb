class PagesController < ApplicationController
  def home
    @skip_footer = true
  end
end
