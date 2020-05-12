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
      identifier = { name = "treefold"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2017 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/treefold";
      url = "";
      synopsis = "Provides folds which try to combine elements in a balanced way.";
      description = "Provides folds which try to combine elements in a balanced way.\nThese can be useful for constructing balanced binary trees, or more\nstable summation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
        buildable = true;
        };
      tests = {
        "treefold-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."treefold" or (errorHandler.buildDepError "treefold"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."treefold" or (errorHandler.buildDepError "treefold"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }