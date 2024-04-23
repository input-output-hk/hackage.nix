{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jpl-horizons-api"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Marco Zocca";
      maintainer = "ocramz";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/jpl-horizons-api";
      url = "";
      synopsis = "Ephemerides for solar system objects from the JPL Horizons service";
      description = "The JPL Horizons on-line solar system data and ephemeris computation service provides access to key solar system data and flexible production of highly accurate ephemerides for solar system objects (1,180,796 asteroids, 3,789 comets, 211 planetary satellites {includes satellites of Earth and dwarf planet Pluto}, 8 planets, the Sun, L1, L2, select spacecraft, and system barycenters). Horizons is provided by the Solar System Dynamics Group of the Jet Propulsion Laboratory.\n\nThis package provides a convenience function for downloading select intervals of ephemeris data, and saving the state vector as a CSV file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "jh-csv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jpl-horizons-api" or (errorHandler.buildDepError "jpl-horizons-api"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }