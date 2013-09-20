module InfluenceExplorer
  class Lobbying
    def initialize(options)
       @data = InfluenceExplorer.request('lobbying.json', options)
    end
  end
end