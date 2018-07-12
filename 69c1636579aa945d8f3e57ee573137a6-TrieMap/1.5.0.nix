{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "TrieMap";
          version = "1.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wasserman.louis@gmail.com";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "Automatic type inference of generalized tries with Template Haskell.";
        description = "Provides a efficient and compact implementation of generalized tries, and Template Haskell tools to generate\nthe necessary translation code.  This is meant as a drop-in replacement for Data.Map.";
        buildType = "Simple";
      };
      components = {
        "TrieMap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.th-expand-syns
            hsPkgs.ghc-prim
          ];
        };
      };
    }