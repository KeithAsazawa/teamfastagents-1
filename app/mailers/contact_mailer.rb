class ContactMailer < ActionMailer::Base

	default :to => "teamfastagents@gmail.com"
	default :from => "noreply@teamfastagents.mygbiz.com"
	
	def contact_email(message)
		@message = message
		mail(:subject => "Parkwoods Condos Inquiry")
	end

end