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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "velma"; version = "0.2022.2.13"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Automatically add files to exposed-modules and other-modules.";
      description = "Velma is a Haskell package that makes it easy to automatically add files to\n@exposed-modules@ and @other-modules@ in Cabal package descriptions.\n\n== Related projects\n\n- [autopack](https://github.com/kowainik/autopack)\n- [cabal-auto-expose](https://github.com/deech/cabal-auto-expose)\n- [cabal-fmt](https://github.com/phadej/cabal-fmt)\n- [hpack](https://github.com/sol/hpack)";
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
        ];
        buildable = true;
      };
      exes = {
        "velma" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."velma" or (errorHandler.buildDepError "velma"))
          ];
          buildable = true;
        };
      };
      tests = {
        "velma-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."velma" or (errorHandler.buildDepError "velma"))
          ];
          buildable = true;
        };
      };
    };
  }