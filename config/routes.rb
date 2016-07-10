Rails.application.routes.draw do

  constraints Clearance::Constraints::SignedIn.new { |user| user.admin? } do
    root to: "admin/dashboards#index", as: :admin_root
  end

  constraints Clearance::Constraints::SignedIn.new do
    root to: "dashboards#index", as: :signed_in_root

    get "me", to: "profiles#edit", as: "edit_profile"
    match "me", to: "profiles#update", as: "update_profile", via: [:patch]
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: "pages#index"
  end
end
