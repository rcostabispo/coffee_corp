RailsAdmin.config do |config|

  ### Popular gems integration
  config.main_app_name = ["Coffee Corp", ""]

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  # == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.model User do
    edit do
      field :name
      field :document
      field :phone
      field :admin do
        visible do
          bindings[:view].current_user.admin?
        end
      end
      field :status do
        visible do
          bindings[:view].current_user.admin?
        end
      end
      field :notes
      field :created_at
      field :updated_at
    end
  end

  config.model Product do
    show do
      field :description
      field :notes
      field :suppliers
      field :created_at
      field :updated_at
    end

    edit do
      field :description
      field :notes
      field :suppliers do
        inline_add false
      end
    end

    create do
      field :description
      field :notes
      field :suppliers do
        inline_add false
      end
    end
  end

  config.model Supplier do
    show do
      field :company_name
      field :fantasy_name
      field :document
      field :individual_businessman
      field :zip_code
      field :address
      field :number
      field :neighborhood
      field :state
      field :city
      field :principal_activity
      field :delivery_time
      field :request_time
      field :freight_type
      field :payment_conditions
      field :products
    end

    edit do
      field :company_name
      field :fantasy_name
      field :document
      field :individual_businessman
      field :zip_code
      field :address
      field :number
      field :neighborhood
      field :state
      field :city
      field :principal_activity
      field :delivery_time
      field :request_time
      field :freight_type
      field :payment_conditions
      field :products do
        inline_add false
      end
    end
  end

  config.model ProductSupplier do
    visible false
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    # export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
