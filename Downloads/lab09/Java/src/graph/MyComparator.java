package graph;

import java.util.Comparator;

public class MyComparator implements Comparator<Pair<Integer, Integer>> {

	@Override
	public int compare(Pair<Integer, Integer> o1, Pair<Integer, Integer> o2) {
		// TODO Auto-generated method stub
		return o1.second() - o2.second();
	}

}
