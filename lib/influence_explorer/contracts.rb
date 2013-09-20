module InfluenceExplorer
  class Contracts
    def initialize(options)
       @data = InfluenceExplorer.request('contracts.json', options)
    end
  end
end