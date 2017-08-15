class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  storage :file
  storage :fog
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  def extension_white_list
    %w(jpg jpeg gif png)
  end
  process resize_to_limit: [223, 340]
  version :thumb do
    process :resize_to_fit => [223, 340]
  end
  def filename
    super.chomp(File.extname(super)) + '.jpg' if original_filename.present?
  end
end
