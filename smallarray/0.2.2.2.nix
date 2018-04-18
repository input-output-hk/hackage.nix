{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "smallarray";
          version = "0.2.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Antoine Latter, 2010-2011";
        maintainer = "aslatter@gmail.com";
        author = "Antoine Latter";
        homepage = "http://community.haskell.org/~aslatter/code/bytearray";
        url = "";
        synopsis = "low-level unboxed arrays, with minimal features.";
        description = "This package includes low-level, portable uboxed array types.\nThe SmallArray has been tuned for size in memory, and hence\ndoes not support many of the nice operations supplied by\nother array libraries";
        buildType = "Simple";
      };
      components = {
        smallarray = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.bytestring
          ];
        };
      };
    }