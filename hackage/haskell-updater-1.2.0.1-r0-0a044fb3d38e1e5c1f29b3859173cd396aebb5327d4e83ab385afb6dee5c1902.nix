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
      specVersion = "1.6";
      identifier = { name = "haskell-updater"; version = "1.2.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Ivan Lazar Miljenovic,\nLennart Kolmodin,\nStephan Friedrichs,\nEmil Karlson";
      maintainer = "haskell@gentoo.org";
      author = "Ivan Lazar Miljenovic,\nLennart Kolmodin,\nStephan Friedrichs,\nEmil Karlson";
      homepage = "http://haskell.org/haskellwiki/Gentoo#haskell-updater";
      url = "";
      synopsis = "Rebuild Haskell dependencies in Gentoo";
      description = "haskell-updater rebuilds Haskell packages on Gentoo\nafter a GHC upgrade or a dependency upgrade.\nhaskell-updater is written so as to use only\nGHC's boot libraries so as to have no external\ndependencies.\nThis version is for: GHC-6.12 + Cabal-1.8,\nGHC-7.0 + Cabal-1.10, GHC-7.2 + Cabal-1.12.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskell-updater" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }