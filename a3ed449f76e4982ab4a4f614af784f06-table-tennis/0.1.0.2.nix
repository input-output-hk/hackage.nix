{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "table-tennis";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "rorystephenson@gmail.com";
        author = "Rory Stephenson";
        homepage = "";
        url = "";
        synopsis = "A table tennis game tracking engine";
        description = "A table tennis game tracking engine. This is purely a\nfacility for managing a game.";
        buildType = "Simple";
      };
      components = {
        "table-tennis" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }