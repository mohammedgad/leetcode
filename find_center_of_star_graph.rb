# frozen_string_literal: true

class FindCenterOfStarGraph
  # @param {Integer[][]} edges
  # @return {Integer}
  def find_center(edges)
    # count the edges for each node and save it in list
    # return the node (index + 1) which has a number equal the count of edges
    nodes_count = edges.length + 1

    list = Array.new(nodes_count, 0)
    i = 0
    while i < edges.length
      list[edges[i][1] - 1] += 1
      list[edges[i][0] - 1] += 1
      i += 1
    end

    list.index(nodes_count - 1) + 1
  end
end
