{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timespan";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "2016 Alexander Thiemann";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/timespan#readme";
        url = "";
        synopsis = "Useful timespan datatype and functions";
        description = "A data type for time spans with some useful utility functions";
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