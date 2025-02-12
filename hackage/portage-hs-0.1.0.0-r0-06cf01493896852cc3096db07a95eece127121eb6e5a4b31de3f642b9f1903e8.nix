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
    flags = { gentoo-tests = false; pedantic = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "portage-hs"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (C) 2022-2025 Gentoo Authors";
      maintainer = "hololeap@protonmail.com";
      author = "Gentoo Authors";
      homepage = "https://github.com/gentoo-haskell/cabal-portage/tree/main/portage-hs";
      url = "";
      synopsis = "Data structures and functions for interacting with the Portage package manager";
      description = "Currently, this includes:\n\n* data structures for package atoms\n* parsers for atoms, emerge output, and CONTENTS files\n* functions for running emerge\n* lots of tests";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parsable" or (errorHandler.buildDepError "parsable"))
          (hsPkgs."portage-hs".components.sublibs.portage-hs-internal or (errorHandler.buildDepError "portage-hs:portage-hs-internal"))
        ];
        buildable = true;
      };
      sublibs = {
        "portage-hs-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."parsable" or (errorHandler.buildDepError "parsable"))
          ];
          buildable = true;
        };
      };
      tests = {
        "portage-hs-test" = {
          depends = [
            (hsPkgs."parsable" or (errorHandler.buildDepError "parsable"))
            (hsPkgs."parsable-test" or (errorHandler.buildDepError "parsable-test"))
            (hsPkgs."portage-hs" or (errorHandler.buildDepError "portage-hs"))
            (hsPkgs."portage-hs".components.sublibs.portage-hs-internal or (errorHandler.buildDepError "portage-hs:portage-hs-internal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ pkgs.lib.optional (flags.gentoo-tests) (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"));
          buildable = true;
        };
      };
    };
  }