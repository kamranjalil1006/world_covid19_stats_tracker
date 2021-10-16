class WorldStatsModel {
  late int updated;
  late int cases;
  late int todayCases;
  late int deaths;
  late int todayDeaths;
  late int recovered;
  late int todayRecovered;
  late int active;
  late int critical;
  late int casesPerOneMillion;
  late double deathsPerOneMillion;
  late int tests;
  late double testsPerOneMillion;
  late int population;
  late int oneCasePerPeople;
  late int oneDeathPerPeople;
  late int oneTestPerPeople;
  late double activePerOneMillion;
  late double recoveredPerOneMillion;
  late double criticalPerOneMillion;
  late int affectedCountries;

  WorldStatsModel({
    required this.updated,
    required this.cases,
    required this.todayCases,
    required this.deaths,
    required this.todayDeaths,
    required this.recovered,
    required this.todayRecovered,
    required this.active,
    required this.critical,
    required this.casesPerOneMillion,
    required this.deathsPerOneMillion,
    required this.tests,
    required this.testsPerOneMillion,
    required this.population,
    required this.oneCasePerPeople,
    required this.oneDeathPerPeople,
    required this.oneTestPerPeople,
    required this.activePerOneMillion,
    required this.recoveredPerOneMillion,
    required this.criticalPerOneMillion,
    required this.affectedCountries,
  });
  WorldStatsModel.fromJson(Map<String, dynamic> json) {
    updated = json["updated"]?.toInt();
    cases = json["cases"]?.toInt();
    todayCases = json["todayCases"]?.toInt();
    deaths = json["deaths"]?.toInt();
    todayDeaths = json["todayDeaths"]?.toInt();
    recovered = json["recovered"]?.toInt();
    todayRecovered = json["todayRecovered"]?.toInt();
    active = json["active"]?.toInt();
    critical = json["critical"]?.toInt();
    casesPerOneMillion = json["casesPerOneMillion"]?.toInt();
    deathsPerOneMillion = json["deathsPerOneMillion"]?.toDouble();
    tests = json["tests"]?.toInt();
    testsPerOneMillion = json["testsPerOneMillion"]?.toDouble();
    population = json["population"]?.toInt();
    oneCasePerPeople = json["oneCasePerPeople"]?.toInt();
    oneDeathPerPeople = json["oneDeathPerPeople"]?.toInt();
    oneTestPerPeople = json["oneTestPerPeople"]?.toInt();
    activePerOneMillion = json["activePerOneMillion"]?.toDouble();
    recoveredPerOneMillion = json["recoveredPerOneMillion"]?.toDouble();
    criticalPerOneMillion = json["criticalPerOneMillion"]?.toDouble();
    affectedCountries = json["affectedCountries"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["updated"] = updated;
    data["cases"] = cases;
    data["todayCases"] = todayCases;
    data["deaths"] = deaths;
    data["todayDeaths"] = todayDeaths;
    data["recovered"] = recovered;
    data["todayRecovered"] = todayRecovered;
    data["active"] = active;
    data["critical"] = critical;
    data["casesPerOneMillion"] = casesPerOneMillion;
    data["deathsPerOneMillion"] = deathsPerOneMillion;
    data["tests"] = tests;
    data["testsPerOneMillion"] = testsPerOneMillion;
    data["population"] = population;
    data["oneCasePerPeople"] = oneCasePerPeople;
    data["oneDeathPerPeople"] = oneDeathPerPeople;
    data["oneTestPerPeople"] = oneTestPerPeople;
    data["activePerOneMillion"] = activePerOneMillion;
    data["recoveredPerOneMillion"] = recoveredPerOneMillion;
    data["criticalPerOneMillion"] = criticalPerOneMillion;
    data["affectedCountries"] = affectedCountries;
    return data;
  }
}
