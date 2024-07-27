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
    flags = { ghcflags = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "boilerplate"; version = "0.0.2"; };
      license = "GPL-3.0-or-later";
      copyright = "2020 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Generate Haskell boilerplate.";
      description = "Generates boilerplate from templates and markers in Haskell source code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."hsinspect" or (errorHandler.buildDepError "hsinspect"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
        build-tools = pkgs.lib.optional (flags.ghcflags) (hsPkgs.pkgsBuildBuild.hsinspect.components.exes.hsinspect or (pkgs.pkgsBuildBuild.hsinspect or (errorHandler.buildToolDepError "hsinspect:hsinspect")));
        buildable = true;
      };
      exes = {
        "boilerplate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."hsinspect" or (errorHandler.buildDepError "hsinspect"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."boilerplate" or (errorHandler.buildDepError "boilerplate"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ] ++ pkgs.lib.optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
          build-tools = pkgs.lib.optional (flags.ghcflags) (hsPkgs.pkgsBuildBuild.hsinspect.components.exes.hsinspect or (pkgs.pkgsBuildBuild.hsinspect or (errorHandler.buildToolDepError "hsinspect:hsinspect")));
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."hsinspect" or (errorHandler.buildDepError "hsinspect"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."boilerplate" or (errorHandler.buildDepError "boilerplate"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
          ] ++ pkgs.lib.optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ] ++ pkgs.lib.optional (flags.ghcflags) (hsPkgs.pkgsBuildBuild.hsinspect.components.exes.hsinspect or (pkgs.pkgsBuildBuild.hsinspect or (errorHandler.buildToolDepError "hsinspect:hsinspect")));
          buildable = true;
        };
      };
    };
  }