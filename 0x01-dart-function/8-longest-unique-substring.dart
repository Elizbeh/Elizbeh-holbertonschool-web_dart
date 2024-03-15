 String longestUniqueSubstring(String str) {
  String longestSubstring = "";
  String currentSubstring = "";
  int maxLength = 0;

  for (int i=0; i < str.length; ++i){
    String currentChar= str[i];

    if (!currentSubstring.contains(currentChar)) {
      currentSubstring += currentChar;
    } else {
      if(currentSubstring.length > maxLength) {
        maxLength = currentSubstring.length;
        longestSubstring = currentSubstring;
      }
      currentSubstring = currentSubstring.substring(currentSubstring.indexOf(currentChar) + 1) + currentChar;
    }
  }

  //Check the longest so far
  if (currentSubstring.length > maxLength) {
    longestSubstring = currentSubstring;
  }
  return longestSubstring;
 }