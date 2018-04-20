{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "data-flags";
          version = "0.0.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        homepage = "https://github.com/mvv/data-flags";
        url = "";
        synopsis = "A package for working with bit masks and flags in general.";
        description = "This package provides type classes for flags and corresponding instances\nfor standard numeric types viewed as bit masks.";
        buildType = "Simple";
      };
      components = {
        data-flags = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }