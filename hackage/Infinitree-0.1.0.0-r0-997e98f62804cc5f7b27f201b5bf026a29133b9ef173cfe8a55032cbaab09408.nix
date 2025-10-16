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
      specVersion = "2.2";
      identifier = { name = "Infinitree"; version = "0.1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "2025 VegOwOtenks";
      maintainer = "hackage@vegowotenks.de";
      author = "VegOwOtenks";
      homepage = "";
      url = "";
      synopsis = "Infinitely deep trees for lazy stateless memoization";
      description = "Please see the example in the documentation at <https://vegowotenks.de/projects/Infinitree/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."infinite-list" or (errorHandler.buildDepError "infinite-list"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
      benchmarks = {
        "fibonacci" = {
          depends = [
            (hsPkgs."Infinitree" or (errorHandler.buildDepError "Infinitree"))
            (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
            (hsPkgs."infinite-list" or (errorHandler.buildDepError "infinite-list"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }