class NotificationsMailer < ActionMailer::Base

require 'mail'

  default :from => "healthcareimagingsales@gmail.com"
  default :to => "joneserice@gmail.com"

  def new_message(message,file_name,file_data)
#  def new_message(message)
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

#    attachments= message.picture[:filename]
#    attachments[message.picture.original_filename] = File.read(message.picture.path
#    mail.attachments['filename.jpg'] = file_data

#attachments['file-name.jpg'] = File.read(file_name[0])
attachments['file-name.jpg'] = file_data

    mail(:subject => "#{message.category} | #{message.email} | #{message.itemtype}", :body => "Name: #{message.name} | Category: #{message.category} | Method of contact: #{message.preferredcontact} | Email: #{message.email} | Phone: #{message.phone} | Item Type: #{message.itemtype} | Brand preference: #{message.company} | Additional Details: #{message.details} |Company: #{message.company} | Company Type: #{message.companytype})
    end
=begin
[#<ActionDispatch::Http::UploadedFile:0x007f596c8e2110 @tempfile=#<Tempfile:/tmp/RackMultipart20150817-3624-1ofh207>, @original_filename="dino.jpeg", @content_type="image/jpeg", @headers="Content-Disposition: form-data; name=\"message[picture][]\"; filename=\"dino.jpeg\"\r\nContent-Type: image/jpeg\r\n">]
=end



end
