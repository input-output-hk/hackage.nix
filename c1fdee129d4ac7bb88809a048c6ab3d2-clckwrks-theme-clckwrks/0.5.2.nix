{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "clckwrks-theme-clckwrks";
          version = "0.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
        author = "Jeremy Shaw";
        homepage = "http://www.clckwrks.com/";
        url = "";
        synopsis = "simple bootstrap based template for clckwrks";
        description = "";
        buildType = "Simple";
      };
      components = {
        clckwrks-theme-clckwrks = {
          depends  = [
            hsPkgs.base
            hsPkgs.clckwrks
            hsPkgs.containers
            hsPkgs.happstack-authenticate
            hsPkgs.hsp
            hsPkgs.hsx2hs
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.web-plugins
          ];
        };
      };
    }