module ConfigurationStatusScopedSearch
  extend ActiveSupport::Concern

  module ClassMethods
    def scoped_search_status(status, options)
      options[:offset] = ConfigReport::METRIC.index(status.to_s)
      options[:word_size] = ConfigReport::BIT_NUM
      options[:only_explicit] = true
      options[:complete_value] = {:true => true, :false => false}
      scoped_search options
    end
  end
end
