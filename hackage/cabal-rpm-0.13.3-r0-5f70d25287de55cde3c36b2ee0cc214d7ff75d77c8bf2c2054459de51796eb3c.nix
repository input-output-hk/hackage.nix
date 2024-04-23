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
    flags = { old-locale = false; https = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cabal-rpm"; version = "0.13.3"; };
      license = "GPL-3.0-only";
      copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2019 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhp@community.haskell.org>, Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/juhp/cabal-rpm";
      url = "";
      synopsis = "RPM packaging tool for Haskell Cabal-based packages";
      description = "This package provides a RPM packaging tool for Haskell Cabal-based packages.\n\ncabal-rpm has commands to generate a RPM spec file and srpm for a package.\nIt can rpmbuild packages, yum/dnf install their dependencies, prep packages,\nand install them. There are commands to list package dependencies and\nmissing dependencies. The diff command compares the current spec file with\na freshly generated one, the update command updates the spec file to latest\nversion from Stackage or Hackage, and the refresh command updates the spec\nfile to the current cabal-rpm packaging. It also handles Hackage revisions of\npackages. Standalone packages can also be packaged built with cabal-install.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-rpm" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ (if flags.old-locale
            then [
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ]
            else [
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ])) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.0" && flags.https) [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          ];
          buildable = true;
        };
      };
    };
  }