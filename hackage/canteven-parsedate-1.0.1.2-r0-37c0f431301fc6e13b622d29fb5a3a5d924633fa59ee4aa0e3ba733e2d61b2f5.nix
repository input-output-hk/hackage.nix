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
      identifier = { name = "canteven-parsedate"; version = "1.0.1.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rowens@sumall.com, ababkin@sumall.com";
      author = "Rick Owens, Alex Babkin";
      homepage = "";
      url = "";
      synopsis = "Date / time parsing utilities that try to guess the date / time format.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."timezone-series" or (errorHandler.buildDepError "timezone-series"))
          (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
        ];
        buildable = true;
      };
      tests = {
        "test-parsedate" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."canteven-parsedate" or (errorHandler.buildDepError "canteven-parsedate"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timezone-series" or (errorHandler.buildDepError "timezone-series"))
            (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
          ];
          buildable = true;
        };
      };
    };
  }