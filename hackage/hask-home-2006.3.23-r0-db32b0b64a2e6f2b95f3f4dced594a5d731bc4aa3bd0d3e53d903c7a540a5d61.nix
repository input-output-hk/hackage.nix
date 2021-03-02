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
      specVersion = "1.0";
      identifier = { name = "hask-home"; version = "2006.3.23"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert 2006";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "http://www.cs.chalmers.se/~bringert/darcs/hask-tags/doc/";
      url = "";
      synopsis = "Generate homepages for cabal packages";
      description = "This program generates simple homepages for cabalized\nHaskell packages.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hask-home" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            ];
          buildable = true;
          };
        "hask-home-upload" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            ];
          buildable = true;
          };
        };
      };
    }