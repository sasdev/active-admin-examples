ActiveAdmin.register Variation do



  menu :priority => 3

  filter :id

  index do
    div do
      h2 'More complex variations on how to use diffrent fields'
    end
  end

  form do |f|

    f.inputs 'Strings' do
      f.input :eg_string_select, :as => :select, :collection => ['Custom Item 1','Custom Item 2','Custom Item 3'], :label => 'Select', :hint => 'A basic drop down with custom names'
      f.input :eg_string_select_constants, :as => :select, :collection => Variation::STRING_SELECT_VALUES.map{|key, value| [value, key]}, :label => 'Select with constants', :hint => 'A dropdown which uses constants with keys. Used when you want to save the key in the DB instead of the text'
      f.input :eg_string_select_country, :as => :country,:label => 'Select Country', :hint => 'A list of countries to choose from'

    end

    f.inputs 'Booleans' do
      f.input :eg_boolean, :hint => 'This is how the default looks'
    end

    f.inputs 'Dates' do

    end

    f.inputs 'DateTimes' do

    end

    f.inputs 'decimals' do

    end

    actions

  end

end
