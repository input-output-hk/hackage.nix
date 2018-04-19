{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "LRU";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Adam Langley";
        homepage = "http://www.imperialviolet.org/lru";
        url = "";
        synopsis = "Implements an LRU data structure";
        description = "";
        buildType = "Custom";
      };
      components = {
        LRU = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
      };
    }