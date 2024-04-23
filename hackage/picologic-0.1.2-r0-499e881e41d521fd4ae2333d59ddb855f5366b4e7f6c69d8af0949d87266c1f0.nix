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
    flags = { shell = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "picologic"; version = "0.1.2"; };
      license = "MIT";
      copyright = "2014 Stephen Diehl";
      maintainer = "stephen.m.diehl@gmail.com";
      author = "Stephen Diehl";
      homepage = "https://github.com/sdiehl/picologic";
      url = "";
      synopsis = "Utilities for symbolic predicate logic expressions";
      description = "`picologic` provides symbolic logic expressions that can be integrated with the `picosat` solver.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."picosat" or (errorHandler.buildDepError "picosat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      exes = {
        "picologic" = {
          depends = pkgs.lib.optionals (flags.shell) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."picosat" or (errorHandler.buildDepError "picosat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          ];
          buildable = if flags.shell then true else false;
        };
      };
      tests = {
        "picologic-quickcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."picosat" or (errorHandler.buildDepError "picosat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."picologic" or (errorHandler.buildDepError "picologic"))
          ];
          buildable = true;
        };
        "pretty-print-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."picologic" or (errorHandler.buildDepError "picologic"))
          ];
          buildable = true;
        };
      };
    };
  }