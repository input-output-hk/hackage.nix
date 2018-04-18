{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rng-utils";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ozgun.ataman@soostone.com";
        author = "Ozgun Ataman, Snap Framework Authors";
        homepage = "";
        url = "";
        synopsis = "RNG within an MVar for convenient concurrent use";
        description = "";
        buildType = "Simple";
      };
      components = {
        rng-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mwc-random
          ];
        };
      };
    }