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
      specVersion = "1.2";
      identifier = { name = "Stasis"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Courtney Robinson";
      maintainer = "zcourts";
      author = "zcourts";
      homepage = "https://github.com/zcourts/Stasis";
      url = "";
      synopsis = "A simple MVCC like library";
      description = "Multi-version concurrency control";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "Stasis" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }