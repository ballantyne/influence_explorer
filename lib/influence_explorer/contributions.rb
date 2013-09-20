module InfluenceExplorer
  class Contributions
    def initialize(options)
       @data = InfluenceExplorer.request('contributions.json', options)
    end
  end
end