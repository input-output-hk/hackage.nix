{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Updater";
          version = "0.3";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "silvio.frischi@gmail.com";
        author = "Silvio Frischknecht";
        homepage = "https://github.com/yokto/Updater";
        url = "";
        synopsis = "Monadic FRP library based on stm";
        description = "Read the homepage for more information.";
        buildType = "Simple";
      };
      components = {
        Updater = {
          depends  = [ hsPkgs.base ];
        };
      };
    }