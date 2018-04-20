{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hydrogen-data";
          version = "0.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "julian@scravy.de";
        author = "Julian Fleischer";
        homepage = "https://scravy.de/hydrogen-data/";
        url = "";
        synopsis = "Hydrogen Data";
        description = "";
        buildType = "Simple";
      };
      components = {
        hydrogen-data = {
          depends  = [
            hsPkgs.base
            hsPkgs.hydrogen-prelude
            hsPkgs.hydrogen-parsing
          ];
        };
      };
    }