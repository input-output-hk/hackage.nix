{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cipher-rc5";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Finn Espen Gundersen <finn@gundersen.net>";
        maintainer = "Finn Espen Gundersen <finn@gundersen.net>";
        author = "Finn Espen Gundersen <finn@gundersen.net>";
        homepage = "http://github.com/fegu/cipher-rc5";
        url = "";
        synopsis = "Pure RC5 implementation";
        description = "Pure RC5 implementation";
        buildType = "Simple";
      };
      components = {
        "cipher-rc5" = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
          ];
        };
      };
    }