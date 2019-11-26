module ApplicationHelper

  def selected_services_by_category(services, category)
    services.select { |service| service.category == category }
  end

end
