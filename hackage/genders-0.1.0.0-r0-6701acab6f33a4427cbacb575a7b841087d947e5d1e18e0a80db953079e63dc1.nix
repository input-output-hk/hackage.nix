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
      identifier = { name = "genders"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "© 2014 Tweag I/O Limited";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Bindings to libgenders.";
      description = "Genders data identifies nodes in a cluster of machines and allows\nassociating attributes with each node. libgenders allows reading and\nquerying genders data from a file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = [ (pkgs."genders" or (errorHandler.sysDepError "genders")) ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."genders" or (errorHandler.buildDepError "genders"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }