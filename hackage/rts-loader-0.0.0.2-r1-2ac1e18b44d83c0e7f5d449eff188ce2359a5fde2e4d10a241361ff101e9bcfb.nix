{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.24.0.0";
      identifier = {
        name = "rts-loader";
        version = "0.0.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2016  Daniel Gröber";
      maintainer = "dxld@darkboxed.org";
      author = "Daneil Gröber";
      homepage = "https://github.com/DanielG/rts-loader";
      url = "";
      synopsis = "Dynamically load Haskell libraries";
      description = "Load and execute functions from Haskell dynamic libraries without being\nrestricted to a single RTS/GHC version.\n\nSee README.md below for more information.";
      buildType = "Custom";
    };
    components = {
      "rts-loader" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.zenc)
          (hsPkgs.unix)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.Cabal)
        ];
      };
      exes = {
        "rts-loader" = {};
        "rts-loader-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.process)
            (hsPkgs.rts-loader)
          ];
        };
      };
    };
  }