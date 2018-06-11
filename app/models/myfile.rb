class Myfile < ApplicationRecord
    mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
   #validates :name, presence: true # Make sure the owner's name is present.

   belongs_to :user_sender, :foreign_key => :user_id, class_name: 'User'

# validate :attachment_size_validation, :if => "attachment?"  

# def attachment_size_validation
#     puts attachment.size
#     errors[:attachment] << "should be less than 2MB" if attachment.size > 2.megabytes
# end
end
