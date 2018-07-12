{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "clckwrks-theme-geo-bootstrap";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "http://divshot.github.com/geo-bootstrap/";
        url = "";
        synopsis = "geo bootstrap based template for clckwrks";
        description = "";
        buildType = "Simple";
      };
      components = {
        "clckwrks-theme-geo-bootstrap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.clckwrks
            hsPkgs.hsp
            hsPkgs.text
          ];
        };
      };
    }