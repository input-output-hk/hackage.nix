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
    flags = { curl = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "cabal-rpm"; version = "2.3.0"; };
      license = "GPL-3.0-only";
      copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2024 Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <petersen@fedoraproject.org>";
      author = "Jens Petersen <juhpetersen@gmail.com>,\nBryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/juhp/cabal-rpm";
      url = "";
      synopsis = "RPM packaging tool for Haskell Cabal-based packages";
      description = "This package provides a RPM packaging tool for Haskell Cabal-based\npackages.\n\ncabal-rpm has commands to generate a RPM spec file and srpm for a package.\nIt can rpmbuild packages, dnf/yum install their dependencies,\nprep packages, and install them.\nThere are commands to list package dependencies and missing dependencies.\nThe diff command compares the current spec file with a freshly generated\none,\nthe update command updates the spec file to latest version from Stackage\nor Hackage, and the refresh command updates the spec file to the current\ncabal-rpm packaging. It also handles Hackage revisions of packages.\nStandalone packages can also be made, built with cabal-install.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-rpm" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cached-json-file" or (errorHandler.buildDepError "cached-json-file"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
            (hsPkgs."http-query" or (errorHandler.buildDepError "http-query"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."simple-cabal" or (errorHandler.buildDepError "simple-cabal"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (if compiler.isGhc && compiler.version.ge "8.0" && !flags.curl
            then [
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
              (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            ]
            else [ (hsPkgs."curl" or (errorHandler.buildDepError "curl")) ]);
          buildable = true;
        };
      };
    };
  }