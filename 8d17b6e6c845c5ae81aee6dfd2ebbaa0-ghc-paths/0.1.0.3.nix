{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "ghc-paths";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Simon Marlow";
        maintainer = "Simon Marlow <marlowsd@gmail.com>";
        author = "Simon Marlow";
        homepage = "";
        url = "";
        synopsis = "Knowledge of GHC's installation directories";
        description = "Knowledge of GHC's installation directories";
        buildType = "Custom";
      };
      components = {
        ghc-paths = {
          depends  = [ hsPkgs.base ];
        };
      };
    }