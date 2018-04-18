{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "hydrogen-data";
          version = "0.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "julfleischer@paypal.com";
        author = "Julian Fleischer";
        homepage = "https://github.com/scravy/hydrogen-data";
        url = "";
        synopsis = "Hydrogen Data";
        description = "";
        buildType = "Simple";
      };
      components = {
        hydrogen-data = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hydrogen-prelude
            hsPkgs.hydrogen-syntax
            hsPkgs.hydrogen-util
            hsPkgs.nicify
            hsPkgs.parsec
            hsPkgs.uuid
          ];
        };
      };
    }