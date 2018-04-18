{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "neet";
          version = "0.4.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (C) 2015 Leon Medvinsky";
        maintainer = "lmedvinsky@hotmail.com";
        author = "Leon Medvinsky";
        homepage = "https://github.com/raymoo/NEET";
        url = "";
        synopsis = "A NEAT library for Haskell";
        description = "This package provides functions for creating, training, and using NEAT neural\nnetworks.";
        buildType = "Simple";
      };
      components = {
        neet = {
          depends  = [
            hsPkgs.base
            hsPkgs.MonadRandom
            hsPkgs.containers
            hsPkgs.multimap
            hsPkgs.transformers
            hsPkgs.graphviz
            hsPkgs.cereal
            hsPkgs.random
            hsPkgs.parallel
          ];
        };
      };
    }