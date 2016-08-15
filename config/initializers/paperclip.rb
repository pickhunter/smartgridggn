Paperclip::Attachment.default_options[:storage] = :s3
Paperclip::Attachment.default_options[:s3_credentials] = {
  bucket: Settings.AWS.S3.BUCKET,
  access_key_id: Settings.AWS.S3.ACCESS_KEY_ID,
  secret_access_key: Settings.AWS.S3.SECRET_ACCESS_KEY,
  s3_region: Settings.AWS.S3.REGION
  # path: 'updates/'
}
Paperclip::Attachment.default_options[:s3_host_name] = "s3-#{Settings.AWS.S3.REGION}.amazonaws.com"
# Paperclip::Attachment.default_options[:url] = Settings.AWS.S3.BUCKET_URL
Paperclip::Attachment.default_options[:s3_permissions] = 'public-read'
# Paperclip::Attachment.default_options[:s3_region] = Settings.AWS.S3.REGION
