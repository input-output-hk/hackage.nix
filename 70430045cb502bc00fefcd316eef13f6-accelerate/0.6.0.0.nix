{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "accelerate";
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Manuel M T Chakravarty <chak@cse.unsw.edu.au>";
        author = "Manuel M T Chakravarty, Gabriele Keller, Sean Lee";
        homepage = "http://www.cse.unsw.edu.au/~chak/project/accelerate/";
        url = "";
        synopsis = "An embedded language for accelerated array processing";
        description = "This library defines an embedded language for\nregular, multi-dimensional array computations with\nmultiple backends to facilitate high-performance\nimplementations.  Currently, the only backend is an\ninterpreter that serves as a reference implementation\nof the intended semantics of the language.";
        buildType = "Simple";
      };
      components = {
        "accelerate" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.haskell98
            hsPkgs.pretty
          ];
        };
      };
    }