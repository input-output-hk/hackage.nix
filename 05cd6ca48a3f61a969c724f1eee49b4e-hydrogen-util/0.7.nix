{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "hydrogen-util";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "julfleischer@paypal.com";
        author = "Julian Fleischer";
        homepage = "https://github.com/scravy/hydrogen-util";
        url = "";
        synopsis = "Hydrogen Tools";
        description = "";
        buildType = "Simple";
      };
      components = {
        hydrogen-util = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hydrogen-prelude
            hsPkgs.parsec
            hsPkgs.time
          ];
        };
      };
    }