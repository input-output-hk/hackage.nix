{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crypto-random-effect";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tob@butter.sh";
        author = "Tobias Florek";
        homepage = "https://githu";
        url = "";
        synopsis = "A random effect using crypto-random";
        description = "";
        buildType = "Simple";
      };
      components = {
        "crypto-random-effect" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.crypto-random
            hsPkgs.extensible-effects
            hsPkgs.securemem
          ];
        };
      };
    }