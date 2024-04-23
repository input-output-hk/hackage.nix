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
      identifier = { name = "hub"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan, 2011-2012";
      maintainer = "Chris Dornan <chris@chrisdornan.com>";
      author = "Chris Dornan <chris@chrisdornan.com>";
      homepage = "https://justhub.org";
      url = "";
      synopsis = "For multiplexing GHC installations and providing\ndevelopment sandboxes";
      description = "This package provides a utility for multiplexing\nmultiple GHC and Haskell Platform installations,\neach selected by an environment variable or a work-tree\nconfiguration file.\n\nThe package also provides flexible development sandboxes\n(aka /hubs/) into which packages can be installed\nand subsequently erased. Commands are provided for\n(re)naming, annotating, replicating, swapping, archiving,\nlocking and removing hubs. E.g.,\n\n> hub init\n\nwill create a hub based on the default GHC installation\nand associate the current directory with it. Any use\nof /cabal/ or the GHC tools within this directory or it's\ndescendants will work with correct tool chain and the\nprivate user-package database belonging to the hub.\n\nThe following would (i) download 'hexpat' (ii) install it\nin a named 'hexpat-test' hub connected to the /2011.2.0.1/\nHaskell Platform, (iii) build the 'hexpat' test suite\nwith the same hub, and (iv) finally run the test suite.\n\n>cabal unpack hexpat\n>cd hexpat-*\n>hub init -s 2011.2.0.1 hexpat-test\n>cabal install\n>cd test\n>cabal install --bindir=.\n>./testsuite\n\nThis same 'hexpat-test' hub can be shared with other\nwork trees.\n\nThe tool is intended to be provided as part of a\ndistribution (like the /JustHub/ Enterprise Linux\ndistribution) but it can be configured with existing\nstock GHC installations without too much effort.  Once\ninstalled and configured the hub command  inter-operates\nseamlessly with the GHC tools (/ghc/, /ghci/, /ghc-pkg/,\netc.) and /Cabal-install/.\n\nFor installation instructions, introductory material,\nFAQs, etc., see the home page http:\\/\\/justhub.org.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hub" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = true;
        };
      };
    };
  }