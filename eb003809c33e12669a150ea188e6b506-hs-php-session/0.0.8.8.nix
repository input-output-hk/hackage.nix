{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hs-php-session";
          version = "0.0.8.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "edwardlblake@gmail.com";
        author = "Edward L. Blake";
        homepage = "https://github.com/elblake/hs-php-session";
        url = "";
        synopsis = "PHP session serialization";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hs-php-session" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }