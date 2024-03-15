bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  int i = 0;
  int j = s.length - 1;

  while (i < j) {
    if (s[i] != s[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}