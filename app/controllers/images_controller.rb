class ImagesController < ApplicationController

	def create
		
		image = Image.create(avatar: params[:image][:avatar], post_id: params[:image][:post_id]);

		 return redirect_to post_path(params[:image][:post_id]);

	end

	def destroy

		abc = Image.find(params[:id]);
		xyz = abc.post_id;
		abc.destroy;

		redirect_to post_path(xyz);


	end
end
