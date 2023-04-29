# frozen_string_literal: true

require "resend/request"

module Resend
  # Module responsible for wrapping email sending API
  module Emails
    class << self
      # send email functionality
      # https://resend.com/docs/api-reference/send-email
      def send(params)
        path = "/email"
        Resend::Request.new(path, params, "post").perform
      end
    end

    # This method is kept here for backwards compatibility
    # Use Resend::Emails.send instead.
    def send_email(params)
      path = "/email"
      Resend::Request.new(path, params, "post").perform
    end
  end
end
