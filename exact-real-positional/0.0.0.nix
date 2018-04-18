{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exact-real-positional";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lukas9@mi.fu-berlin.de";
        author = "grlks";
        homepage = "";
        url = "";
        synopsis = "Framework for Exact Real Arithmetic in the Positional Number System";
        description = "Computable real numbers are represented in a signed digit floating point representation. Each number consists of an infinitly sequence of these digits. Basic arithmetic operators are implemented, conversion from and into other Haskell number types is possible.";
        buildType = "Simple";
      };
      components = {
        exact-real-positional = {
          depends  = [ hsPkgs.base ];
        };
      };
    }