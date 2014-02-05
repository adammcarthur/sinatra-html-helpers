A soon to be small collection of handy HTML helpers for Sinatra.

**HTML Select Box:**

    # Default parameters
    
    html_select(resource_name, field_name, options_list, selected_value)

    # Example

    html_select("user", "city", { "melb": "Melbourne", "nyc": "New York City", "lon": "London"}, "Melbourne")

    # Example HTML Output

    <select name="[user]city">
      <option value="melb" selected="true">Melbourne</option>
      <option value="nyc">New York City</option>
      <option value="lon">London</option>
    </select>
