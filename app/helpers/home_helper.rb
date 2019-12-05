module HomeHelper
  def filter_params(filters)
    query_params = filters.reject { |k, v| v.nil? }.map { |k, v| "filter[#{k}]=#{v}" if v }

    "?#{query_params.join('&')}"
  end

  def active_class(item, params, filter_key)
    item.id.to_s == params.dig(:filter, filter_key) ? 'active' : ''
  end
end
