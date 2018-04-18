{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "competition";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jon@joneisen.me";
        author = "Jon Eisen";
        homepage = "github.com/yanatan16/haskell-competition";
        url = "";
        synopsis = "Helpers and runners for code competitions";
        description = "";
        buildType = "Simple";
      };
      components = {
        competition = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.parsec
          ];
        };
      };
    }