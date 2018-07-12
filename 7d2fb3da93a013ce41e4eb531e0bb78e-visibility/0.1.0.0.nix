{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "visibility";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2015 Luka Horvat";
        maintainer = "luka.horvat9@gmail.com";
        author = "Luka Horvat";
        homepage = "https://github.com/LukaHorvat/visibility";
        url = "";
        synopsis = "Simple computation of visibility polygons.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "visibility" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }