ActiveAdmin.register Event do
  #Menu display index
  menu :priority => 1

  menu :label => 'Events'

  permit_params :city,
                :name,
                :image,
                :details,
                :start_datetime,
                :end_datetime,
                :location,
                :gmap_lattitude,
                :gmap_logitude,
                :email,
                :mobile,
                :website

#Scopes
  scope :all
#  scope :pending
#  scope :approved
#  scope :rejected
#  scope :cancelled
#  scope :featured
#Filters  
  filter :city
  filter :user, :content_columns => :first_name
  filter :name
  filter :featured
  filter :location
  filter :details
  filter :start_datetime
  filter :end_datetime
# New/Edit forms  
  form do |f|
    f.inputs do
      #f.input :status, :label => "Event Status", :as => :select, :collection => Event::EVENT_STATUSES
      # Conditional show/hide using js
      #cancel_reason_style = f.object.cancelled? ? "display:block" : "display:none"
      #reject_reason_style = f.object.rejected? ? "display:block" : "display:none"
      #f.input :reject_reason, :wrapper_html => {:style => reject_reason_style}, :hint => "Required if status event rejected"
      #f.input :cancel_reason, :wrapper_html => {:style => cancel_reason_style}, :hint => "Required if status event rejected"
      f.input :city, :label => "Event Status"
      f.input :name, :label => "Name"
      f.input :image, :as => :file #, :hint => f.template.image_tag(f.object.image.url(:medium))
      f.input :details, :input_html => {:class => 'autogrow', :rows => 5, :cols => 30, :maxlength => 10}
      f.input :start_datetime
      f.input :end_datetime
      f.input :location, :input_html => {:class => 'autogrow', :rows => 5, :cols => 30, :maxlength => 10}
      f.input :gmap_lattitude
      f.input :gmap_logitude
      f.input :email
      f.input :mobile
      f.input :website
    end
    f.actions
  end
  index do
    column :name
    column :user
    column :city
    column :status
    column :start_datetime
#    column :end_datetime
    column :email
    actions
  end
  show do |event|
    attributes_table do
      row :name
      row :details
      row :user
      row :city
     # row :status do
     #   event.status.titleize
     # end
      # has_many :through
      row :themes do
        event.themes.collect { |t| t.name }.join(', ')
      end
      row :event_type do
        event.event_types.collect { |t| t.name }.join(', ')
      end
      row :start_datetime
      row :end_datetime
      row :location
      row :gmap_lattitude
      row :gmap_logitude
      row :email
      row :mobile
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
