class SummaryController < ApplicationController
  authorize_resource :class => false
  def summary
  end
end
