class ApplicationController < ActionController::API
  before_action :authenticate_request, except: [:validate]

  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthenticateApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end