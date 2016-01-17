class RegistrationsController < Devise::RegistrationsController
  before_filter :build_resource, only: [:new, :create]
end
