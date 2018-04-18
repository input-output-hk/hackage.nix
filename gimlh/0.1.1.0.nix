{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gimlh";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "alex.gaziev@gmail.com";
        author = "Alexey Gaziev";
        homepage = "https://github.com/gazay/gimlh";
        url = "";
        synopsis = "Haskell parser for GIML";
        description = "Parser for small simple language for big data Gimlh (https://github.com/gazay/gimlh)";
        buildType = "Simple";
      };
      components = {
        gimlh = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
          ];
        };
      };
    }