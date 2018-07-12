{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "SConfig";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "fgaz@users.noreply.github.com";
        author = "Francesco Gazzetta";
        homepage = "https://github.com/fgaz/SConfig";
        url = "";
        synopsis = "A simple config library";
        description = "A simple config library.";
        buildType = "Simple";
      };
      components = {
        "SConfig" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }