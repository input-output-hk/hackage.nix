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
      identifier = { name = "tip-lib"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danr@chalmers.se";
      author = "Dan Rosén, Nick Smallbone";
      homepage = "http://tip-org.github.io";
      url = "";
      synopsis = "tons of inductive problems - support library and tools";
      description = "This package provides a tool for processing inductive theorem proving problems in TIP format (see the homepage for details).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."geniplate-mirror" or (errorHandler.buildDepError "geniplate-mirror"))
          (hsPkgs."genifunctors" or (errorHandler.buildDepError "genifunctors"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."structural-induction" or (errorHandler.buildDepError "structural-induction"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
          ];
        buildable = true;
        };
      exes = {
        "tip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tip-lib" or (errorHandler.buildDepError "tip-lib"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }