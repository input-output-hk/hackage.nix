{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "FailureT";
          version = "15321.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "strake888@gmail.com";
        author = "Matthew Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Failure Monad Transformer";
        description = "Failure Monad Transformer";
        buildType = "Simple";
      };
      components = {
        "FailureT" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mmtl
          ];
        };
      };
    }