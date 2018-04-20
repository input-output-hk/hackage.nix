{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "line-size";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "xy30.com";
        url = "";
        synopsis = "Display the number of bytes of each line";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          line-size = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }