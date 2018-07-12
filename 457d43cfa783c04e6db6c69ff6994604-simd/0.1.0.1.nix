{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simd";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mike@izbicki.me";
        author = "Mike Izbicki";
        homepage = "http://github.com/mikeizbicki/simd";
        url = "";
        synopsis = "simple interface to GHC's SIMD instructions";
        description = "SIMD (Single Instruction Multiple Data) CPU instructions provide a simple\nand fast way to parallelize numeric computations.   GHC 7.8 provides primops\nthat let us access these instructions.  This package wraps thos primops in\na more user friendly form.\n\nThe <https://github.com/mikeizbicki/simd github repository> contains an example usage of the library and runtime performance graphs.\nThe README.md file there is the best place to start, then check the examples folder, then this haddock documentation.";
        buildType = "Simple";
      };
      components = {
        "simd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.primitive
            hsPkgs.vector
          ];
        };
      };
    }