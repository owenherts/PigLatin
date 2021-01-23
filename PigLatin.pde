public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
    for(int i = 0; i < sWord.length(); i++)
       if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || 
          sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
      return i;
  return -1;
}
public int findFirstQU(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
    for(int j = 1; j < sWord.length(); j++)
       if(sWord.charAt(j-1) == 'q' && sWord.charAt(j) == 'u')
      return j;
      return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstQU(sWord) == 1)
  {
    return sWord.substring(2, sWord.length()) + "quay";
  }
  else if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else if(findFirstVowel(sWord) == 1)
  {
    return sWord.substring(1, sWord.length()) + sWord.substring(0,1) + "ay";
  }
  else if(findFirstVowel(sWord) == 2)
  {
    return sWord.substring(2, sWord.length()) + sWord.substring(0,2) + "ay";
  }
  else if(findFirstVowel(sWord) == 3)
  {
    return sWord.substring(3, sWord.length()) + sWord.substring(0,3) + "ay";
  }
  else
  {
    return "ERROR!";
  }
}
