class VideoController < ApplicationController
  def show
  	@video = Medium.find(params[:id])

  	if @video[:mode] == "wistia" then
  		@block = "<div id=\"wistia_#{@video[:data]}\" class=\"wistia_embed\" style=\"width:640px;height:480px;\" data-video-width=\"640\" data-video-height=\"480\">&nbsp;</div>
				<script charset=\"ISO-8859-1\" src=\"http://fast.wistia.com/static/concat/E-v1.js\"></script>
				<script>
				wistiaEmbed = Wistia.embed(\"#{@video[:data]}\", {
				  version: \"v1\",
				  videoWidth: #{@video[:width]},
				  videoHeight: #{@video[:height]},
				  volumeControl: true,
				  controlsVisibleOnLoad: true
				});
				</script>"
  	else
  		@block = "date type #{@video[:mode]} is not supported"
  	end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video }
    end
  end
end
