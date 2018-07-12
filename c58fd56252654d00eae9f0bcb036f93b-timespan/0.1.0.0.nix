{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timespan";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 Alexander Thiemann";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/timespan#readme";
        url = "";
        synopsis = "Useful timespan datatype and functions";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "timespan" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }