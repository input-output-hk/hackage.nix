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
      identifier = { name = "jord"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Cedric Liegeois";
      maintainer = "Cedric Liegeois <ofmooseandmen@yahoo.com>";
      author = "Cedric Liegeois";
      homepage = "https://github.com/ofmooseandmen/jord";
      url = "";
      synopsis = "Geographic position calculations on Great Circles";
      description = "Please see the README on GitHub at <https://github.com/ofmooseandmen/jord#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "jord-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."jord" or (errorHandler.buildDepError "jord"))
            ];
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