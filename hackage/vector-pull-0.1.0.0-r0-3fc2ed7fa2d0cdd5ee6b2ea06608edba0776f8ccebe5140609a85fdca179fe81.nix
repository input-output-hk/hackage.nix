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
      specVersion = "2.4";
      identifier = { name = "vector-pull"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2024 Michael Ledger";
      maintainer = "mike@quasimal.com";
      author = "Michael Ledger";
      homepage = "";
      url = "";
      synopsis = "Pull-array data structure";
      description = "An implementation of `Int`-indexed arrays that internally are represented by\nan index function enclosed over whatever backend (e.g. `Data.Vector`) you\nlike.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."atomic-counter" or (errorHandler.buildDepError "atomic-counter"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "vector-pull" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-pull" or (errorHandler.buildDepError "vector-pull"))
          ];
          buildable = true;
        };
      };
    };
  }