# Nobody managed to solve this in Python/Ruby.

# Lukas is a Civil Engineer who loves designing road networks to connect cities numbered from 1 to n.
# He can build any number of bidirectional roads as long as the resultant network satisfies these constraints:

# It must be possible to reach any city from any other city by traveling along the network of roads.
# No two roads can directly connect the same two cities.
# A road cannot directly connect a city to itself.
#
# In other words, the roads and cities must form a simple connected labeled graph.
def count_road_networks(cities:)
  result = cities
  result % 663_224_321
end

p count_road_networks(cities: 1) == 1
p count_road_networks(cities: 3) == 4
p count_road_networks(cities: 10) == 201986643
