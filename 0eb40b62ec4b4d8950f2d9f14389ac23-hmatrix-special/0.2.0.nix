{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      safe-cheap = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hmatrix-special";
          version = "0.2.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Alberto Ruiz <aruiz@um.es>";
        author = "Alberto Ruiz";
        homepage = "http://perception.inf.um.es/hmatrix";
        url = "";
        synopsis = "Interface to GSL special functions";
        description = "Interface to GSL special functions.";
        buildType = "Simple";
      };
      components = {
        "hmatrix-special" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
          ];
        };
      };
    }