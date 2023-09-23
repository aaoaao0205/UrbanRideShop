# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def create
    Rails.logger.debug "Create action is called"
    super
  end
end
