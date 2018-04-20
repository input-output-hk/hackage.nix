{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ppm";
          version = "2009.5.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/cateye/tree/master";
        url = "";
        synopsis = "a tiny PPM image generator";
        description = "a tiny PPM image generator";
        buildType = "Simple";
      };
      components = {
        ppm = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }