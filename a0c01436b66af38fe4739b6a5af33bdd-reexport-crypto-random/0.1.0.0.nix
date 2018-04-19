{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "reexport-crypto-random";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "";
        author = "James Candy";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Names conflict between crypto-api and crypto-random, therefore I export the former in a separate package.";
        buildType = "Simple";
      };
      components = {
        reexport-crypto-random = {
          depends  = [
            hsPkgs.base
            hsPkgs.crypto-api
          ];
        };
      };
    }