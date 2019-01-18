import java.util.*;
public class Driver implements Comparable<String>{
	private static String currentString;
	public static void main(String[] args)  {
		Scanner keyboard = new Scanner(System.in);
		System.out.println("Enter a sentence");
		String sentence = keyboard.nextLine();

		StringTokenizer lol = new StringTokenizer(sentence);
		ArrayList<String> arr = new ArrayList<String>();


		while (lol.hasMoreTokens()) {
			arr.add(lol.nextToken());
		}

		sortTheStrings(arr);
		System.out.println("Your sorted list is: " + arr);
	}


	public static void sortTheStrings(ArrayList<String> w) {
		//Insertion Sort
		for (int i = 0; i < w.size();++i){
			//Find min element from i to end
			int minIndex = i;
			for (int j = i; j < w.size(); ++j) {
				currentString = w.get(j);
				if (w.get(j).compareTo(w.get(minIndex)) < 0) {
					minIndex = j;
				}
			}
			//Swap element at minIndex with i
			String temp = w.get(i);
			w.set(i, w.get(minIndex));
			w.set(minIndex, temp);
		}
	}

	@Override
	public int compareTo(String arg0) {
		return currentString.compareTo(arg0);
	}
}
