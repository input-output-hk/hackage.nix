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
      specVersion = "3.0";
      identifier = { name = "cabal-hoogle"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 kokobd";
      maintainer = "kokobd <contact@zelinf.net>";
      author = "kokobd <contact@zelinf.net>";
      homepage = "";
      url = "";
      synopsis = "Just like \"stack hoogle\", but for cabal projects";
      description = "This tool";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
        ];
        buildable = true;
      };
      exes = {
        "cabal-hoogle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-hoogle" or (errorHandler.buildDepError "cabal-hoogle"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-hoogle" or (errorHandler.buildDepError "cabal-hoogle"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
            (hsPkgs.pkgsBuildBuild.hoogle.components.exes.hoogle or (pkgs.pkgsBuildBuild.hoogle or (errorHandler.buildToolDepError "hoogle:hoogle")))
          ];
          buildable = true;
        };
      };
    };
  }