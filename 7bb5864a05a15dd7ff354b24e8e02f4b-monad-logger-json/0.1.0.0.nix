{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-logger-json";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dev@fpcomplete.com";
        author = "FP Complete Developers";
        homepage = "http://github.com/fpco/monad-logger-json";
        url = "";
        synopsis = "JSON-friendly Logging APIs";
        description = "Convienence functions for logging ToJSON with monad-logger";
        buildType = "Simple";
      };
      components = {
        monad-logger-json = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.monad-logger
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
      };
    }