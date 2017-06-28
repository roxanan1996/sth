/**
 * Proiectarea Algoritmilor, 2016
 * Lab 9: Arbori minimi de acoperire
 *
 * @author  adinu
 * @email   mandrei.dinu@gmail.com
 */

package graph;

import java.util.ArrayList;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Scanner;


public class Graph {

	/**
	 * Total number of nodes that makes the graph
	 */
	private int numNodes;

	/**
	 * The graph uses list of adjacencies for each node.
	 * The first item of the pair represents the index of the adjacent,
	 * while the second item represents the cost of the edge
	 */
	private List<List<Pair<Integer, Integer>>> edges;

	public Graph() {
		edges = new ArrayList<>();
	}

	public void insertNode(int nodeIdx) {
		edges.add(new ArrayList<>());
	}

	/**
	 * Inserts a new edge into the graph starting at 'fromNodeIdx' and
	 * ending at 'toNodeIdx', having cost value of 'cost'
	 *
	 * @param fromNodeIdx
	 * @param toNodeIdx
	 * @param cost
	 */
	public void insertEdge(int fromNodeIdx, int toNodeIdx, int cost) {
		edges.get(fromNodeIdx).add(new Pair<>(toNodeIdx, cost));
	}

	public int getNodeCount() {
		return numNodes;
	}

	public List<Pair<Integer, Integer>> getEdges(int nodeIdx) {
		return edges.get(nodeIdx);
	}
	
public List<Pair<Integer, Integer>> Prim (int root) {
		
		List<Pair<Integer, Integer>> result = new ArrayList<Pair<Integer, Integer>>();
		int[] d = new int[numNodes];
		int[] p = new int[numNodes];
		PriorityQueue<Pair<Integer, Integer>> minHeap=new PriorityQueue<Pair<Integer, Integer>>(numNodes, new MyComparator());
		
		for (int i = 0; i < numNodes; ++i) {
			
			if (i == root) {
				d[i] = 0;
			} else {
				d[i] = 100000;
			}
			
			p[i] = -1;
			
			// adaug indicele nodului si d[nod]
			minHeap.add(new Pair<Integer, Integer>(i, d[i]));
		}
		
		while (minHeap.size() != 0) {
			Pair<Integer, Integer> vertice = minHeap.poll();
			
			// adaugate la lista de muchii
			if (vertice.first() != root) {
				result.add(new Pair<Integer, Integer>(p[vertice.first()], vertice.first()));
			}
			
			Integer index = vertice.first();
			for (Pair<Integer, Integer> neighbor : edges.get(index)) {
				if (minHeap.contains(new Pair<Integer, Integer>(neighbor.first(), d[neighbor.first()])) && neighbor.second() < d[neighbor.first()]) {
					minHeap.remove(new Pair<Integer, Integer>(neighbor.first(), d[neighbor.first()]));
					d[neighbor.first()] = neighbor.second();
					p[neighbor.first()] = vertice.first();
					minHeap.add(new Pair<Integer, Integer>(neighbor.first(), d[neighbor.first()]));
					
				}
			}
		}
		
		return result;
	}

	/**
	 * Function to read all the tests
	 *
	 * Input Format:
	 * N M
	 * Nodei Nodej Costij			   -- list of edges
	 * ...
	 * where
	 * N = Number of Nodes
	 * M = Number of Edges
	 * Costij = cost of edge from i to j, as well as from j to i
	 * @param scanner
	 */
	public void readData(Scanner scanner) {

		numNodes = scanner.nextInt();
		int numEdges = scanner.nextInt();

		for (int i = 0; i < numNodes; i++) {
			insertNode(i);
		}

		for (int edgeIdx = 1; edgeIdx <= numEdges; edgeIdx++) {
			int node1 = scanner.nextInt();
			int node2 = scanner.nextInt();
			int cost = scanner.nextInt();

			insertEdge(node1, node2, cost);
			insertEdge(node2, node1, cost);
		}
	}

	@Override
	public String toString() {

		StringBuilder sb = new StringBuilder("Print Graph:\n");

		for(int n = 0; n < numNodes; n++) {
			sb.append("OutEdges for " + n + " -> ");

			for (Pair<Integer, Integer> edge : edges.get(n)) {
				sb.append(edge.first());
                sb.append("( " + edge.second() + " ) | ");
			}

			sb.append("\n");
		}
		sb.append("\n");

		return sb.toString();
	}
}
