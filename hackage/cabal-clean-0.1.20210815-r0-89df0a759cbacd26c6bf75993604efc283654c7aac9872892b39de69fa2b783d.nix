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
      identifier = { name = "cabal-clean"; version = "0.1.20210815"; };
      license = "BSD-3-Clause";
      copyright = "Andreas Abel, 2021";
      maintainer = "Andreas Abel <andreas.abel@cse.gu.se>";
      author = "Andreas Abel";
      homepage = "https://github.com/andreasabel/cabal-clean";
      url = "";
      synopsis = "Remove outdated cabal build artefacts from `dist-newstyle`.";
      description = "Simple command line tool to remove cabal build artefacts\nfrom `dist-newstyle/build` that are superseded by newer\nversions of the built package or the Haskell compiler.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-clean" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."string-qq" or (errorHandler.buildDepError "string-qq"))
            ];
          buildable = true;
          };
        };
      };
    }