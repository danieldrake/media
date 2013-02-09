class VideoController < ApplicationController
  def show
  	video = Medium.find(:all, :conditions => { :talk_id => params[:id], :kind => "video" } )

    video = video[0] # selecting the first (and ideally ONLY) item in the array
                     # this will cause unexpected behavior if more than one video file exists

    	case video[:mode] 
      when "wistia"
    		@block = "<div id=\"wistia_#{video[:data]}\" class=\"wistia_embed\" style=\"width:640px;height:480px;\" data-video-width=\"640\" data-video-height=\"480\">&nbsp;</div>
  				<script charset=\"ISO-8859-1\" src=\"http://fast.wistia.com/static/concat/E-v1.js\"></script>
  				<script>
  				wistiaEmbed = Wistia.embed(\"#{video[:data]}\", {
  				  version: \"v1\",
  				  videoWidth: #{video[:width]},
  				  videoHeight: #{video[:height]},
  				  volumeControl: true,
  				  controlsVisibleOnLoad: true
  				});
  				</script>"
      #when "deeplink"
        #@block = "ugh..."
    	else
    		@block = "Video mode #{video[:mode]} is not yet supported. Please contact your network administrator."
    	end

    unless @block then @block = "I didn't get any data from the video controller. Please contact your network administrator." end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: video }
    end
  end
end
