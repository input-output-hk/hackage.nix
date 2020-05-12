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
    flags = { old-locale = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cabal-rpm"; version = "0.9.5.1"; };
      license = "GPL-3.0-only";
      copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2015 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <petersen@fedoraproject.org>";
      author = "Jens Petersen <juhp@community.haskell.org>, Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/juhp/cabal-rpm";
      url = "";
      synopsis = "RPM packaging tool for Haskell Cabal-based packages";
      description = "This package provides a RPM packaging tool for Haskell Cabal-based packages.\n\ncblrpm has commands to generate a RPM spec file and srpm for a package.\nIt can rpmbuild packages, yum/dnf install their dependencies, prep packages,\nand install them. There are commands to list package dependencies and\nmissing dependencies. The diff command compares the current spec file\nwith a freshly generated one and the update command updates the spec file\nto latest version from Hackage.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cblrpm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ] ++ (if flags.old-locale
            then [
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              ]
            else [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ]);
          buildable = true;
          };
        };
      };
    }