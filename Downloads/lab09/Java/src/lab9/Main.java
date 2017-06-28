/**
 * Proiectarea Algoritmilor, 2016
 * Lab 9: Arbori minimi de acoperire
 *
 * @author  adinu
 * @email   mandrei.dinu@gmail.com
 */

package lab9;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

import graph.Graph;

public class Main {

	final static String PATH = "test01.in";

	public static void main(String ... args) throws FileNotFoundException {
		Scanner sc = new Scanner(new File(PATH));

		// create the graph and read the data
		Graph g = new Graph();
		g.readData(sc);
		// debugging: print the graph
		System.out.println(g.Prim(0));

		sc.close();
	}
}
