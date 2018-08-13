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
      specVersion = "1.6";
      identifier = {
        name = "TrieMap";
        version = "2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Automatic type inference of generalized tries with Template Haskell.";
      description = "Provides a efficient and compact implementation of generalized tries, and Template Haskell tools to generate\nthe necessary translation code.  This is meant as a drop-in replacement for Data.Map.\nThe most recent release combines zipper-based ideas from recently proposed changes to Data.Map, as well\nas heavily optimized ByteString and Vector instances based on the vector package.";
      buildType = "Simple";
    };
    components = {
      "TrieMap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.th-expand-syns)
          (hsPkgs.vector)
          (hsPkgs.primitive)
        ];
      };
    };
  }