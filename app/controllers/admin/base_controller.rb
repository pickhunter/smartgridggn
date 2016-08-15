class Admin::BaseController < ApplicationController
  http_basic_authenticate_with name: Settings.ADMIN.USER_NAME, password: Settings.ADMIN.PASSWORD
end