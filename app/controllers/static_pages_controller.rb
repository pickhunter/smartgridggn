class StaticPagesController < ApplicationController
  def about
  end

  def news
  end

  def vendor
    render :under_construction
  end

  def specification
    render :under_construction
  end

  def under_construction
  end
end
