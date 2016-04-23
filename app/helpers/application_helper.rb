module ApplicationHelper

  # Display form group with has-error class and span contain error message if exist
  # @param [Hash] errors errors object
  # @param [String] error_key key for error to display if exist
  # @param [Block] content div content
  def form_group(errors = nil, error_key,  &content)

    @has_error = has_error(errors,error_key)

      content_tag :div, class: "form-group #{@has_error}" do
        yield
      end

  end

  # Return error tag
  def error_tag(errors, error_key)
    @has_error ||= has_error(errors,error_key)

    if @has_error
      content_tag :span, class: "help-block" do
        errors[error_key].join(",").html_safe
      end
    end
  end

  # Check that current key has error or not
  def has_error(errors,error_key)
    errors && errors.has_key?(error_key) ? 'has-error' : false
  end
end
