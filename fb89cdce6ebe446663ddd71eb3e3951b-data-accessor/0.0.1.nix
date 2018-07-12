{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "data-accessor";
          version = "0.0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "";
        url = "";
        synopsis = "Automatically generate composable accessors for data types.";
        description = "This module provides a simple abstract data type for\na piece of a data stucture that can be read from and\nwritten to.  It provides an automatic Template Haskell\nroutine to scour data type definitions and generate\naccessor objects for them automatically.";
        buildType = "Simple";
      };
      components = {
        "data-accessor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
          ];
        };
      };
    }