{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yam-logger";
          version = "0.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Daniel YU <leptonyu@gmail.com>";
        author = "";
        homepage = "https://github.com/leptonyu/yam#readme";
        url = "";
        synopsis = "Yam Logger";
        description = "logger module for yam";
        buildType = "Simple";
      };
      components = {
        "yam-logger" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.fast-logger
            hsPkgs.monad-logger
            hsPkgs.string-conversions
            hsPkgs.text
            hsPkgs.wai-logger
          ];
        };
      };
    }