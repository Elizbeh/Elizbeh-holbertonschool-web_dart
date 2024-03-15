int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int pointA = 0;
  int pointB = 0;

  //Calculates total points for teamA
  pointA += teamA['free throws'] ?? 0;
  pointA += 2 * (teamA['2 pointers'] ?? 0);
  pointA += 3 * (teamA['3 pointers'] ?? 0);

  pointB += teamB['free throws'] ?? 0;
  pointB += 2 * (teamB['2 pointers'] ?? 0);
  pointB += 3 * (teamB['3 pointers'] ?? 0);

  //determin the winner
  if (pointA > pointB) {
    return 1;
  } else if (pointA < pointB) {
    return 2;
  } else { 
    return 0;
  }
}