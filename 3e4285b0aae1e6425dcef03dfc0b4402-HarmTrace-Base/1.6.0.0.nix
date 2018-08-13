{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "HarmTrace-Base";
        version = "1.6.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) 2012--2018 Chordify B.V.";
      maintainer = "haskelldevelopers@chordify.net";
      author = "W. Bas de Haas, Jeroen Bransen and Jose Pedro Magalhaes";
      homepage = "https://github.com/chordify/HarmTrace-Base";
      url = "";
      synopsis = "Parsing and unambiguously representing musical chords.";
      description = "HarmTrace: Harmony Analysis and Retrieval of Music\nwith Type-level Representations of Abstract\nChords Entities\n\nWe present HarmTrace-Base, a library for parsing and\nunambiguously representing musical chords.";
      buildType = "Simple";
    };
    components = {
      "HarmTrace-Base" = {
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
            (hsPkgs.random)
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