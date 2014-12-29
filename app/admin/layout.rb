ActiveAdmin.register Layout do
  permit_params :placeholder
  form do |f|

    f.inputs 'Table', :class => "layout-left" do
      f.input :placeholder
    end

    f.inputs 'Attributes Table', :class => "layout-right" do
      f.input :placeholder
    end
    actions
  end

#-------------------------------- Show page -----------------------------------------------------

  show :title => 'Layout' do

    panel '50/50', :class => "layout-left" do
      attributes_table_for layout do
        row("Company Name") { layout.placeholder }
      end
    end

    panel '50/50', :class => "layout-right" do
      attributes_table_for layout do
        row("Company Name") { layout.placeholder }
      end
    end

    panel 'Attributes Table' do
      attributes_table_for layout do
        row("Company Name") { layout.placeholder }
        row("Company Name") { layout.placeholder }
        row("Company Name") { layout.placeholder }
        row("Company Name") { layout.placeholder }
      end
    end

    panel 'Table' do
      table_for layout do |t|
        t.column("example") { layout.placeholder }
        t.column("Qty.") { 'text' }
        t.column("Qty.") { 'text' }
      end
    end
    panel 'nested' do
      panel 'nested' do

      end
    end

  end

end

