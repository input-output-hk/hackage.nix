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
      specVersion = "0";
      identifier = { name = "cabal-rpm"; version = "0.2.2"; };
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
          depends = [
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