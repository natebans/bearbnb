class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user
  before_action :find_booking, only: [ :show, :edit, :update, :destroy ]
  before_action :find_bear, only: [ :new, :create ]


end
