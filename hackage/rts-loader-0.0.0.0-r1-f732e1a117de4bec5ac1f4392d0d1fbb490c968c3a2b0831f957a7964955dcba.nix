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
      specVersion = "1.24";
      identifier = { name = "rts-loader"; version = "0.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2016  Daniel Gröber";
      maintainer = "dxld@darkboxed.org";
      author = "Daneil Gröber";
      homepage = "https://github.com/DanielG/rts-loader";
      url = "";
      synopsis = "Dynamically load Haskell libraries";
      description = "Load and execute functions from Haskell dynamic libraries without being\nrestricted to a single RTS/GHC version.\n\nSee README.md below for more information.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."zenc" or (errorHandler.buildDepError "zenc"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
        buildable = true;
        };
      exes = {
        "rts-loader" = { buildable = true; };
        "rts-loader-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."rts-loader" or (errorHandler.buildDepError "rts-loader"))
            ];
          buildable = true;
          };
        };
      };
    }