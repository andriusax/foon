class PagesController < ApplicationController
  allow_unauthenticated_access

  def home; end
  def about; end
  def shows; end
  def releases; end
  def video; end
end
