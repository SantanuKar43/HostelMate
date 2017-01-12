package utilities;

public class TextDecorate {
	public static String titleCase(String name){
		char ch[] = name.toCharArray();
		ch[0] = Character.toTitleCase(ch[0]);
		for(int i=0;i<ch.length-1;i++){
			if(Character.isWhitespace(ch[i])){
				ch[i+1] = Character.toTitleCase(ch[i+1]);
			}
		}
		return new String(ch);
	}
}
