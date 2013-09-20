module InfluenceExplorer
  class Aggregates
    def initialize(options)
       @data = InfluenceExplorer.request('aggregates.json', options)
    end
  end
end