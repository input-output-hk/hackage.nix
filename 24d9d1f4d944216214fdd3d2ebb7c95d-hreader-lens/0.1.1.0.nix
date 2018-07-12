{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hreader-lens";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "denis.redozubov@gmail.com";
        author = "Denis Redozubov";
        homepage = "http://github.com/dredozubov/hreader-lens";
        url = "";
        synopsis = "Optics for hreader package";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hreader-lens" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hreader
            hsPkgs.hset
            hsPkgs.lens
            hsPkgs.profunctors
          ];
        };
      };
    }