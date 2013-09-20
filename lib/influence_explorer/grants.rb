module InfluenceExplorer
  class Grants
    def initialize(options)
       @data = InfluenceExplorer.request('grants.json', options)
    end
  end
end