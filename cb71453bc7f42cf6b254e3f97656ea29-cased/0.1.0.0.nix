{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cased";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "bill@casarin.me";
        author = "William Casarin";
        homepage = "https://github.com/jb55/cased";
        url = "";
        synopsis = "Track string casing in its type";
        description = "Track string casing in its type";
        buildType = "Simple";
      };
      components = {
        "cased" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }