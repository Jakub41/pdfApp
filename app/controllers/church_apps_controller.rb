class ChurchAppsController < ApplicationController 
  
  layout false, :only => :generate
  
  def html_test
    cls = [{:status=> ["created", "no_change", "updated"], :prefered_term => "test term", :notation => "This is test notation" }]
    results = [{ bc_demo: params[:bc_demo]}]
    @html = CdiscChangesReport.new.create(results, cls, current_user, params[:template])
    respond_to do |format|
      format.pdf do
        @html = @html
        render pdf: "cdisc_changes.pdf", page_size: 'A4', orientation: 'Portrait' # Landscape
      end
    end
  end

  def html_report
    cls = [{:status=> ["created", "no_change", "updated"], :prefered_term => "test term", :notation => "This is test notation" }]
    results = [{ bc_demo: params[:bc_demo]}]
    if params[:template].include? "second_template"
      render :file => 'public/second_template.html'
    elsif params[:template].include? "cdisc_pilot"
      render :file => 'public/cdisc_pilot.html'
    elsif params[:template].include? "acme_bc_demo.html"
      render :file => 'public/acme_bc_demo.html'
    end
  end

  def generate
  end

end