int score(Map<String, int> team) {
  int points = 0;
  team.forEach((key, value) {
    if (key == 'Free throws') {
      points += value;
    } else if (key == '2 pointers') {
      points += value * 2;
    } else if (key == '3 pointers') {
      points += value * 3;
    }
  });

  return points;
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int scoreA = score(teamA);
  int scoreB = score(teamB);
  if (scoreA > scoreB) {
    return 1;
  }
  if (scoreA < scoreB) {
    return 2;
  }
  return 0;
}
