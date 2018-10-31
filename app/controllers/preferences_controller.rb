class PreferencesController < ApplicationController
  def index
    @countries = WhereFrom.order("name ASC")
  end
end
