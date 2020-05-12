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
      specVersion = "1.12";
      identifier = { name = "jord"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Cedric Liegeois";
      maintainer = "Cedric Liegeois <ofmooseandmen@yahoo.com>";
      author = "Cedric Liegeois";
      homepage = "https://github.com/ofmooseandmen/jord";
      url = "";
      synopsis = "Geographical Position Calculations";
      description = "Please see the README on GitHub at <https://github.com/ofmooseandmen/jord#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "jord-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."jord" or (errorHandler.buildDepError "jord"))
            ];
          buildable = true;
          };
        "jord-gen" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      tests = {
        "jord-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."jord" or (errorHandler.buildDepError "jord"))
            ];
          buildable = true;
          };
        };
      };
    }