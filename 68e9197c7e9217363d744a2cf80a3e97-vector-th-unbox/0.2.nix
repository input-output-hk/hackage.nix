{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vector-th-unbox";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "vector-th-unbox@liyang.hu";
        author = "Liyang HU";
        homepage = "";
        url = "";
        synopsis = "Deriver for Data.Vector.Unboxed using Template Haskell";
        description = "A Template Haskell deriver for unboxed vectors, given a pair of coercion\nfunctions to and from some existing type with an Unbox instance.\n\nRefer to \"Data.Vector.Unboxed.Deriving\" for documentation and examples.";
        buildType = "Simple";
      };
      components = {
        vector-th-unbox = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.vector
          ];
        };
      };
    }