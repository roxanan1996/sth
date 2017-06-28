/**
 * Proiectarea Algoritmilor, 2016
 * Lab 8: Drumuri minime
 *
 * @author  adinu
 * @email   mandrei.dinu@gmail.com
 */

package minCost;

import java.util.ArrayList;
import java.util.List;

import graph.GraphT;
import graph.NodeT;
import graph.PairT;

public class FloydWarshall {

	private boolean[][] isPath;

	private Integer[][] cost;

	private Integer[][] next;

	private List<Integer> minPath;

	private GraphT<String, Integer> g;


	public FloydWarshall(GraphT<String, Integer> g) {
		this.g = g;
		isPath = new boolean[g.size()][g.size()];
		cost = new Integer[g.size()][g.size()];
		next = new Integer[g.size()][g.size()];
		minPath = new ArrayList<>();
	}

	public void computeTransitiveClosure() {

		List<NodeT<String>> nodes = g.nodes();
		int nodeCount = g.size();
		prepareTransitiveClosure();

		// init isPath for existing direct edges
		for (NodeT<String> node : nodes) {
			List<PairT<NodeT<String>, Integer>> adjList = g.adjList(node);
			for (PairT<NodeT<String>, Integer> p : adjList) {
				isPath[node.id()][p.first().id()] = true;
			}
		}

		// TODO
		// Hint: apply a similar version of Floyd Warshall algorithm,
		// you don't need to use either cost[][], or next[][] matrices
		
		for (NodeT<String> k : nodes) {
			for (NodeT<String> i : nodes) {
				for (NodeT<String> j : nodes) {
					if (!isPath[i.id()][j.id()]) {
						isPath[i.id()][j.id()] = isPath[i.id()][k.id()] &&
												isPath[k.id()][j.id()];
					}
				}
			}
		}
	}

	public boolean isPathBetween(NodeT<String> source,
								 NodeT<String> destination) {
		// TODO
		// Hint: just check within the isPath[][] matrix

		return isPath[source.id()][destination.id()];
	}

	public void computeAllMinPaths() {

		List<NodeT<String>> nodes = g.nodes();
		int nodeCount = g.size();
		prepareAllMinPathsAlgo();

		// TODO
		// Hint: apply Floyd-Warshall algorithm
		// use cost[][] matrix to find the min cost path between all pairs
		// of nodes
		// use next[][] matrix to print the entire path
		// next[i][j] = next node in the path from i to j
		// initialize next[u][v] with v, for existing direct edges
		for (NodeT<String> node : nodes) {
			List<PairT<NodeT<String>, Integer>> adjList = g.adjList(node);
			for (PairT<NodeT<String>, Integer> p : adjList) {
				cost[node.id()][p.first().id()] = g.getCost(node, p.first());
				next[node.id()][p.first().id()] = p.first().id();
			}
		}
		
		for (NodeT<String> k : nodes) {
			for(NodeT<String> i : nodes) {
				for(NodeT<String> j : nodes) {
						if(cost[i.id()][j.id()] > cost[i.id()][k.id()] + cost[k.id()][j.id()]) {
							cost[i.id()][j.id()] = cost[i.id()][k.id()] + cost[k.id()][j.id()];
								next[i.id()][j.id()] = next[i.id()][k.id()];
						}
				}
			}
		}	
	}	

	public void printMinPath(NodeT<String> source,
							 NodeT<String> destination) {

		// TODO
		// after using Floyd-Warshall algo, use next[][] matrix to
		// build the entire minimum path between them
		// use minPath to save it
		minPath.add(source.id());
		
		Integer nextHope = next[source.id()][destination.id()];
		
		while(nextHope != destination.id()) {
			minPath.add(nextHope);
			nextHope = next[nextHope][destination.id()];
		}
		minPath.add(destination.id());
	}


	private void prepareTransitiveClosure() {
		for (int i = 0; i < g.size(); i++) {
			for (int j = 0; j < g.size(); j++) {
				isPath[i][j] = false;
			}
		}
	}

	private void prepareAllMinPathsAlgo() {
		for (int i = 0; i < g.size(); i++) {
			for (int j = 0; j < g.size(); j++) {
				cost[i][j] = Integer.MAX_VALUE;
				next[i][j] = -1;
			}
		}
	}
}
