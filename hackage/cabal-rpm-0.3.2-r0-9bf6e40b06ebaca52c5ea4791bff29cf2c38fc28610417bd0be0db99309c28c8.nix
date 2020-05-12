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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "cabal-rpm"; version = "0.3.2"; };
      license = "LicenseRef-GPL";
      copyright = "2007 Bryan O'Sullivan <bos@serpentine.com>";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://www.serpentine.com/software/cabal-rpm/";
      url = "";
      synopsis = "RPM package builder for Haskell Cabal source packages.";
      description = "This package turns Haskell Cabal source packages into source and\nbinary RPM packages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-rpm" = {
          depends = if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              ];
          buildable = true;
          };
        };
      };
    }