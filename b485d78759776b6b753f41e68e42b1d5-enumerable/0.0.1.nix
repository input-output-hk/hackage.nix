{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "enumerable";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Daniel Peebles";
        maintainer = "Daniel Peebles <pumpkingod@gmail.com>";
        author = "Daniel Peebles";
        homepage = "";
        url = "";
        synopsis = "Provides a typeclass for enumerating all values in types";
        description = "Enumerate any type, including functions of enumerable types!";
        buildType = "Simple";
      };
      components = {
        "enumerable" = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagged
            hsPkgs.control-monad-omega
          ];
        };
      };
    }