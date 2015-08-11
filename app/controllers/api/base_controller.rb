class Api::BaseController < ApplicationController
  respond_to :json

  def index
    api_success
  end

  def api_success
    headers["bb_header"] = SecureRandom.uuid
    render :json => {}
  end

  def api_failed
  end

  def version
    render text: File.read(Rails.root.join("VERSION"))
  end
end
