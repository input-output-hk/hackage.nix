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
    flags = {
      use-network-uri = true;
      use-old-time = true;
      cabal-syntax = false;
    };
    package = {
      specVersion = "1.12";
      identifier = { name = "hackage-repo-tool"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Well-Typed LLP";
      maintainer = "cabal-devel@haskell.org";
      author = "Edsko de Vries";
      homepage = "https://github.com/haskell/hackage-security";
      url = "";
      synopsis = "Manage secure file-based package repositories";
      description = "This utility can be used to manage secure file-based package\nrepositories (creating [TUF](https://theupdateframework.github.io/)\nmetadata as well as a Hackage index tarball) which can be used by\nclients such as [cabal-install](http://hackage.haskell.org/package/cabal-install).\nCurrently it also provides various lower level utilities for creating\nand signing TUF files.\n\nThis is part of the [Hackage Security](https://github.com/haskell/hackage-security#readme)\ninfrastructure.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hackage-repo-tool" = {
          depends = ((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."hackage-security" or (errorHandler.buildDepError "hackage-security"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (if flags.use-old-time
            then [
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ]
            else [
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ])) ++ (if flags.use-network-uri
            then [
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ])) ++ (if flags.cabal-syntax
            then [
              (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            ]
            else [
              (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
              (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            ]);
          buildable = true;
        };
      };
    };
  }