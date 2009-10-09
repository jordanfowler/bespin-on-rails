module BespinOnRails
  class << self
    def enable
      require 'bespin_on_rails/view_helpers'
      ::ActionView::Base.send :include, BespinOnRails::Helpers::FormTagHelper
    end
  end
end

if defined?(Rails) and defined?(ActionController) and defined?(ActionView)
  BespinOnRails.enable
end
