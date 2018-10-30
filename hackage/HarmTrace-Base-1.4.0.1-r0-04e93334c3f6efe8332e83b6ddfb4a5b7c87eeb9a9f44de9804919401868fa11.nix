{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "HarmTrace-Base";
        version = "1.4.0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) 2012--2014 W. Bas de Haas and Jose Pedro Magalhaes,\nMultiphonyx Holding BV";
      maintainer = "bas@chordify.net, dreixel@chordify.net";
      author = "W. Bas de Haas and Jose Pedro Magalhaes";
      homepage = "https://bitbucket.org/bash/harmtrace-base";
      url = "";
      synopsis = "Parsing and unambiguously representing musical chords.";
      description = "HarmTrace: Harmony Analysis and Retrieval of Music\nwith Type-level Representations of Abstract\nChords Entities\n\nWe present HarmTrace-Base, a library for parsing and\nunambiguously representing musical chords.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.uu-parsinglib)
          (hsPkgs.ListLike)
          (hsPkgs.binary)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test-harmtrace-base" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HarmTrace-Base)
            (hsPkgs.base)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.ListLike)
            (hsPkgs.binary)
            (hsPkgs.ghc-prim)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }