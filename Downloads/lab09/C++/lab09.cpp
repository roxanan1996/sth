/**
 * Proiectarea Algoritmilor, 2016
 * Lab 9: Arbori minimi de acoperire
 *
 * @author  adinu
 * @email   mandrei.dinu@gmail.com
 */

#include <iostream>
#include <fstream>
#include <vector>
#include <utility>

#define pb push_back
#define mp make_pair

using Graph = std::vector<std::vector<std::pair<int, int> > >;

std::ifstream in("test01.in");

void print_graph(Graph& G)
{
  for (auto node = 1u; node < G.size(); node++) {
    std::cout << "OutEdges for " << node << ":\n";
    for (auto &adj : G[node]) {
      std::cout << adj.first << "( " << adj.second << " ) | ";
    }
    std::cout << '\n';
  }
}

int main()
{
  int num_nodes, num_edges;

  in >> num_nodes >> num_edges;

  Graph G(num_nodes + 1);
  int x, y, c;

  for (int i = 1; i <= num_edges; i++) {
    in >> x >> y >> c;
    G[x].pb(std::mp(y, c));
    G[y].pb(std::mp(x, c));
  }

  // debugging - print the graph
  print_graph(G);
}
