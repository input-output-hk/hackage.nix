{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bson-lens";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "bill@casarin.me";
        author = "William Casarin";
        homepage = "https://github.com/jb55/bson-lens";
        url = "";
        synopsis = "BSON lenses";
        description = "Lenses for Data.Bson";
        buildType = "Simple";
      };
      components = {
        "bson-lens" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bson
            hsPkgs.text
            hsPkgs.lens
          ];
        };
      };
    }