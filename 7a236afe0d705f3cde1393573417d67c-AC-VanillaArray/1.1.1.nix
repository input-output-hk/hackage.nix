{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AC-VanillaArray";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrew Coppin <MathematicalOrchid@hotmail.com>";
        author = "Andrew Coppin";
        homepage = "";
        url = "";
        synopsis = "Immutable arrays with plain integer indicies.";
        description = "This package is a thin layer over GHC's low-level array\nprimitives. It provides arrays with zero-origin integers\nfor indicies. (These arrays also lack bounds checks.)\nThey come in two flavours: mutable or immutable. (Both\nare boxed and lazy, however. There are no unboxed arrays\nhere.)\nThe idea is that you can use this package as a starting\npoint for building a more useful array package, without\nhaving to learn all GHC's low-level internals for yourself.";
        buildType = "Simple";
      };
      components = {
        "AC-VanillaArray" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }