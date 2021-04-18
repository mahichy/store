class OrderMailer < ActionMailer::Base
	default form: "oshimchy@gmail.com"

	def order_confirmaion order
		mail_to: order.user.email, subject:  "Your order(##{order_id})"
	end
end