RailsAdmin.config do |config|

  ### Popular gems integration

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
      field :kind do
        visible do
          bindings[:user].kind == 'manager'
        end
      end
      field :status
      field :notes
    end
  end

        # if bindings[:view]._current_user.has_role? :master
        #   bindings[:view].render :partial => "rails_admin/main/#{partial}", :locals => {:field => self, :form => bindings[:form] }
        # else
        #   ''
        # end


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
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
