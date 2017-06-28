/**
 * Proiectarea Algoritmilor, 2016
 * Lab 8: Drumuri minime
 *
 * @author  adinu
 * @email   mandrei.dinu@gmail.com
 */

package minCost;

import java.util.Comparator;
import java.util.PriorityQueue;

import graph.GraphT;
import graph.NodeT;

public class OneSourceShortestPath {

	private int[] distances;

	private GraphT<String, Integer> g;


	public OneSourceShortestPath(GraphT<String, Integer> g) {
		this.g = g;
		distances = new int[g.size()];
	}

	private class NodeComparator implements Comparator<NodeT<String>> {
        /**
         * Compares nodes using the current estimation of the distance from
         * the source node.
         */
        @Override
        public int compare(NodeT<String> arg0, NodeT<String> arg1) {
            int dist1 = distances[arg0.id()];
            int dist2 = distances[arg1.id()];

            return dist1 > dist2 ? 1 : -1;
        }
    }

	public int[] applyDijkstra(NodeT<String> source) {

        resetDistances();

        PriorityQueue<NodeT<String>> pq = new PriorityQueue<>(
        		g.size(), new NodeComparator());

        // TODO

        return distances;
    }

	public int[] applyBellmanFord(NodeT<String> source) {

		resetDistances();

		// TODO BONUS

		return distances;
	}

	public void printInfiniteLoop(NodeT<String> destination) {

		// TODO BONUS
	}

	private void resetDistances() {
        for (int i = 0; i < g.size(); i++) {
            distances[i] =  Integer.MAX_VALUE;
        }
    }
}
