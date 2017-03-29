class Update < ActiveRecord::Base
  has_attached_file :file, {
      preserve_files: true
  }
  do_not_validate_attachment_file_type :file
  # validates_attachment_file_name :file, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/, /pdf\Z/, /zip\Z/]

  validates_attachment :file, presence: true,
    # content_type: { content_type: "image/jpeg" },
    size: { in: 0..25.megabytes }
end
