class ContactsController < ApplicationController
  def new
    @categories = Category.all
  end

  def create
    @categories = Category.all
  end
end
