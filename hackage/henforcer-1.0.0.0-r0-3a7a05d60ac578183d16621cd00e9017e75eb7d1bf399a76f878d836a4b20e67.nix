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
    flags = { ci = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "henforcer"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2020-2026 Flipstone Technology Partners";
      maintainer = "maintainers@flipstone.com";
      author = "Flipstone Technology Partners";
      homepage = "https://github.com/flipstone/henforcer#readme";
      url = "";
      synopsis = "GHC plugin to enforce user specified rules on code.";
      description = "Please see the README on GitHub at <https://github.com/flipstone/henforcer#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."henforcer".components.sublibs.henforcer-internal or (errorHandler.buildDepError "henforcer:henforcer-internal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pollock" or (errorHandler.buildDepError "pollock"))
        ];
        buildable = true;
      };
      sublibs = {
        "henforcer-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pollock" or (errorHandler.buildDepError "pollock"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."henforcer".components.sublibs.henforcer-internal or (errorHandler.buildDepError "henforcer:henforcer-internal"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }