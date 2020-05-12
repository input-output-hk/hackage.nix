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
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hask-home"; version = "2007.12.6"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert 2006";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "http://www.cs.chalmers.se/~bringert/darcs/hask-home/doc/";
      url = "";
      synopsis = "Generate homepages for cabal packages";
      description = "This program generates simple homepages for cabalized\nHaskell packages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hask-home" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."hmarkup" or (errorHandler.buildDepError "hmarkup"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            ] ++ (if flags.split-base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        "hask-home-upload" = {
          depends = if flags.split-base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }