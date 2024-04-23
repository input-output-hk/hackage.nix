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
      identifier = { name = "cabalish"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c)2017 Robert Fischer";
      maintainer = "smokejumperit+stack@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/cabalish#readme";
      url = "";
      synopsis = "Provides access to the cabal file data for shell scripts";
      description = "Use \"cabalish name\" to get the name from the local cabal file in a shell script, or \"cabalish version\" to get the version from the local cabal file in a shell script.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabalish" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }