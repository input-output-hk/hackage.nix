{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HarmTrace-Base";
          version = "1.1.0.2";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) 2012--2013 W. Bas de Haas and Jose Pedro Magalhaes";
        maintainer = "bas@chordify.net, dreixel@chordify.net";
        author = "W. Bas de Haas and Jose Pedro Magalhaes";
        homepage = "";
        url = "";
        synopsis = "Parsing and unambiguously representing musical chords.";
        description = "HarmTrace: Harmony Analysis and Retrieval of Music\nwith Type-level Representations of Abstract\nChords Entities\n\nWe present HarmTrace-Base, a library for parsing and\nunambiguously representing musical chords.";
        buildType = "Simple";
      };
      components = {
        HarmTrace-Base = {
          depends  = [
            hsPkgs.base
            hsPkgs.uu-parsinglib
            hsPkgs.ListLike
            hsPkgs.binary
            hsPkgs.ghc-prim
          ];
        };
      };
    }