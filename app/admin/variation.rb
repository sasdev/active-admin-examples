ActiveAdmin.register Variation do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  menu :priority => 3

  index do
    div do
      h2 'More complex variations on how to use diffrent fields'
    end
  end

  form do |f|

    f.inputs 'Strings' do

    end

    f.inputs 'Booleans' do

    end

    f.inputs 'Dates' do

    end

    f.inputs 'DateTimes' do

    end

    f.inputs 'decimals' do

    end


  end

end
