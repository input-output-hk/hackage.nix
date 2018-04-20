{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Tensor";
          version = "1.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sven Panne <svenpanne@gmail.com>";
        author = "Sven Panne";
        homepage = "https://github.com/svenpanne/Tensor";
        url = "";
        synopsis = "Tensor data types";
        description = "This package contains tensor data types and their instances for some basic\ntype classes.";
        buildType = "Simple";
      };
      components = {
        Tensor = {
          depends  = [ hsPkgs.base ];
        };
      };
    }