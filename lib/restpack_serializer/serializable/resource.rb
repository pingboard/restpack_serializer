module RestPack::Serializer::Resource
  extend ActiveSupport::Concern

  module ClassMethods
    def resource(params = {}, scope = nil, context = {})
      context[:singular] = true
      page_with_options RestPack::Serializer::Options.new(self, params, scope, context)
    end
  end
end
