module InfluenceExplorer
  class Entities
    def initialize(options)
       @data = InfluenceExplorer.request('entities.json', options)
    end
  end
end