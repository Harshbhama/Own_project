class UserMailerPreview < ActionMailer::Preview
 	def new_comment_preview
		UserMailer.new_comment(Comment.last.id)
	end
 	def new_post_preview
		UserMailer.new_comment(Comment.last.id)
	end
 end