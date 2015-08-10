class Api::BaseController < ApplicationController
  def api_success
  end

  def api_failed
  end

  def version
    render text: File.read(Rails.root.join("VERSION"))
  end
end
