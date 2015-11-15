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

  def pgoh
  end

  def mpgio
  end

  def contact_us
  end
end
