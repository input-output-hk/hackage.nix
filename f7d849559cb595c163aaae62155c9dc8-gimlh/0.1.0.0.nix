{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gimlh";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "alex.gaziev@gmail.com";
        author = "Alexey Gaziev";
        homepage = "https://github.com/gazay/gimlh";
        url = "";
        synopsis = "Haskell parser for GIML";
        description = "";
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