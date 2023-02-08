module ApplicationHelper
  def convert_action_name(action_name)
    case action_name
    when "create"
      "new"
    when "update"
      "edit"
    else
      action_name
    end
  end

  def rerender_normal_request_of_form?
    request.format.to_sym == :html &&
      %w(POST PATCH PUT).include?(request.method) &&
      response.status == 200 &&
      %w(edit new).include?((request.referer.split("/") - request.url.split("/")).first)
  end

  def has_asset?(path)
    Rails.application.assets.find_asset(path).present?
  end
end
