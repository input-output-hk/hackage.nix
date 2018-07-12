{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xgboost-haskell";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tao He";
        maintainer = "sighingnow@gmail.com";
        author = "Tao He";
        homepage = "https://github.com/sighingnow/xgboost-haskell#readme";
        url = "";
        synopsis = "XGBoost library for Haskell.";
        description = "XGBoost library for Haskell via FFI binding, on top of foundation.";
        buildType = "Simple";
      };
      components = {
        "xgboost-haskell" = {
          depends  = [
            hsPkgs.base
            hsPkgs.foundation
          ];
        };
        exes = {
          "xgboost-app" = {
            depends  = [
              hsPkgs.base
              hsPkgs.foundation
              hsPkgs.xgboost-haskell
            ];
            libs = [ pkgs.xgboost ];
          };
          "xgb-agaricus" = {
            depends  = [
              hsPkgs.base
              hsPkgs.foundation
              hsPkgs.xgboost-haskell
            ];
            libs = [ pkgs.xgboost ];
          };
        };
      };
    }