{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "rangemin";
          version = "1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wasserman.louis@gmail.com";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "Linear range-min algorithms.";
        description = "Rapidly and lazily preprocesses an array or list so that the smallest element in an arbitrary subrange can be found in constant time.";
        buildType = "Simple";
      };
      components = {
        rangemin = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.ghc-prim
            hsPkgs.mtl
          ];
        };
      };
    }