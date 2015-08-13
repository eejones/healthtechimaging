class NotificationsMailer < ActionMailer::Base

require 'mail'

  default :from => "healthcareimagingsales@gmail.com"
  default :to => "joneserice@gmail.com"

  def new_message(message)
    @message = message
=begin
      if message.picture.content_type.start_with?('image/')
        # extracting images for example...
        filename = attachment.filename
        begin
          File.open(images_dir + filename, "w+b", 0644) {|f| f.write attachment.body.decoded}
        rescue => e
          puts "Unable to save data for #{filename} because #{e.message}"
        end
      end
=end	

    mail = Mail.new do
      from "healthcareimagingsales@gmail.com"
      to "joneserice@gmail.com"
      subject "#{message.category} | #{message.email} | #{message.itemtype}";
      body "Name: #{message.name} | Category: #{message.category} | Method of contact: #{message.preferredcontact} | Email: #{message.email} | Phone: #{message.phone} | Item Type: #{message.itemtype} | Brand preference: #{message.company} | Additional Details: #{message.details} |Company: #{message.company} | Company Type: #{message.companytype} | picture: #{message.picture}"
    end
  end
end
