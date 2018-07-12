{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "one-liner-instances";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Justin Le 2018";
        maintainer = "justin@jle.im";
        author = "Justin Le";
        homepage = "https://github.com/mstksg/one-liner-instances#readme";
        url = "";
        synopsis = "Generics-based implementations for common typeclasses";
        description = "Provides generics-based implementations for common typeclasses using\nGenerics.  For now, has implementations for Numeric typeclasses (Num,\nFractional, and Floating) and Semigroup and Monoid.\n\nPlease see the README on Github at <https://github.com/mstksg/one-liner-instances#readme>";
        buildType = "Simple";
      };
      components = {
        "one-liner-instances" = {
          depends  = [
            hsPkgs.base
            hsPkgs.one-liner
          ];
        };
      };
    }