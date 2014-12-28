ActiveAdmin.register Variation do

  permit_params :eg_string,
                :eg_string_select,
                :eg_string_select_constants,
                :eg_string_select_country,
                #Booleans
                :eg_boolean,
                :eg_boolean_dropdown,
                #dates
                :eg_date,
                :eg_date_picker

  menu :priority => 3
  filter :id

  index do
    div do
      h2 'More complex variations on how to use diffrent fields'
    end
    column do |t|
      "Variation " + t.id.to_s
    end
    actions

  end

  form do |f|

    f.inputs 'Strings' do
      f.input :eg_string_select, :as => :select, :collection => ['Custom Item 1', 'Custom Item 2', 'Custom Item 3'], :label => 'Select', :hint => 'A basic drop down with custom names'
      f.input :eg_string_select_constants, :as => :select, :collection => Variation::STRING_SELECT_VALUES.map { |key, value| [value, key] }, :label => 'Select with constants', :hint => 'A dropdown which uses constants with keys. Used when you want to save the key in the DB instead of the text'
      f.input :eg_string_select_country, :as => :country, :label => 'Select Country', :hint => 'A list of countries to choose from'
      f.input :eg_string_datalist, :as => :datalist, :collection => ["Justin", "Kate", "Amelia", "Gus", "Meg"], :hint => 'You can type information or select a value from a dropdown list'

    end

    f.inputs 'Booleans' do
      f.input :eg_boolean, :hint => 'This is how the default looks'
      div '.'
      f.input :eg_boolean_dropdown, as: :select, :label => 'Boolean dropdown', :hint => 'as a dropdown select'
    end

    f.inputs 'Dates' do
      f.input :eg_date, :hint => 'This is the default'
      f.input :eg_date_picker, :as => :datepicker, :hint => 'A nice interface to select dates'
    end

    f.inputs 'Integers' do
      f.input :eg_integer_slider,:as => :range
    end

    actions

  end

end
