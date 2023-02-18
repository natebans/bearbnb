class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user
  before_action :find_booking, only: [ :confirmation, :request ]
  before_action :find_bear, only: [ :confirmation, :request ]

  def confirmation
  end

  def request
  end

end
