{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24.0.0";
      identifier = { name = "rts-loader"; version = "0.0.0.2"; };
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or ((hsPkgs.pkgs-errors).buildToolDepError "filepath")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."zenc" or ((hsPkgs.pkgs-errors).buildDepError "zenc"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          ];
        buildable = true;
        };
      exes = {
        "rts-loader" = { buildable = true; };
        "rts-loader-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."rts-loader" or ((hsPkgs.pkgs-errors).buildDepError "rts-loader"))
            ];
          buildable = true;
          };
        };
      };
    }