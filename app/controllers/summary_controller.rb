class SummaryController < ApplicationController
  authorize_resource :class => false
  def summary
    @page = 'summary'
  end
end
