class Variation < ActiveRecord::Base

  mount_uploader :eg_string_image, ImageUploader
  mount_uploader :eg_string_file, FileUploader

  STRING_SELECT_VALUES = {op1: 'apple',
                          op2: 'orange',
                          op3: 'lemon'}

end
