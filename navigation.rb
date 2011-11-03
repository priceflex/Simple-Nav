def navigation(links=[],options={})
    path = (options[:controller_only] == true) ? controller.controller_name.to_sym : request.path
    content_tag :ul, :class => (options[:class] || 'navigation') do
      links.each do |link|
        klass = (path == link[:path]) ? options[:selected_class] || 'current' : ""
        klass = "#{link[:class]} #{klass}"

        concat content_tag(:li, link_to(link[:text], link[:path]), :class => klass)
      end
    end
  end

def nav_elements
        [ 
        {:path => "", :text => "", :class => "first"},
        {:path => root_path, :text => "HOME"},
        {:path => before_and_after_path, :text => "BEFORE & AFTER"},
        {:path => epoxy_path, :text => "EPOXY"},
        {:path => pricing_packages_path, :text => "PRICING PACKAGES"},
        {:path => realtor_signup_path, :text => "REALTOR SIGN-UP", :class => "lastlink"},
        {:path => "", :text => "", :class => "last"}
        ]
end
