ActiveAdmin.register Basic do
   menu :priority => 2
  #  menu :label => 'Events'
  permit_params :eg_string,
                :eg_boolean,
                :eg_date,
                :eg_datetime,
                :eg_time,
                :eg_decimal,
                :eg_float,
                :eg_integer,
                :eg_text

  filter :id, :label => 'Example'

  form do |f|

    f.inputs do
      f.input :eg_string, :label => 'String', :hint => 'Used for short bit of text eg. "This is a string"'
      f.input :eg_boolean, :as => :select, :hint => 'can only be true or false', :label => 'Boolean'
      f.input :eg_date, :label => 'Date',:hint => 'Year - Month - Day'
      f.input :eg_datetime, :label => 'Datetime', :hint => 'Year - Month - Day - Hour - Second'
      f.input :eg_time, :label => 'Time', :hint => 'Hour - Second'
      f.input :eg_decimal,  :label => 'Decimal', :hint => 'Store a real number eg 10.22232'
      f.input :eg_float,  :label => 'Float', :hint => 'Similiar to decimal, less accurate, rather use decimal'
      f.input :eg_integer,  :label => 'Integer', :hint => 'Stores a number without commas'
      f.input :eg_text,  :label => 'Text', :input_html => {:class => 'autogrow', :rows => 5, :cols => 30, :maxlength => 10}, :hint => 'Used for long sentences of text'
    end
    f.actions
  end
  index do
    div do
      h2 'This example shows all of the different kinds of fields which can be stored in a database'
    end
    column do |t|
      "Example " + t.id.to_s
    end
    actions
  end
end
