{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ghc-paths";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Simon Marlow";
        maintainer = "Simon Marlow <marlowsd@gmail.com>";
        author = "Simon Marlow";
        homepage = "";
        url = "";
        synopsis = "Knowledge of the GHC's installation directories";
        description = "";
        buildType = "Custom";
      };
      components = {
        ghc-paths = {
          depends  = [ hsPkgs.base ];
        };
      };
    }