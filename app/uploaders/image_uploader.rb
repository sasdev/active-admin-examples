# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick
  storage :file
  #storage :fog

  def store_dir
    "#{model.class.to_s.pluralize.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_fit => [100, 100]
  end

  def cache_dir
    Rails.root.join 'tmp/uploads'
  end


end
