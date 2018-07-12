{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-fresh";
          version = "0.2013.250";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013 Stijn van Drongelen";
        maintainer = "Stijn van Drongelen <rhymoid@gmail.com>";
        author = "Stijn van Drongelen";
        homepage = "";
        url = "";
        synopsis = "An interface for generating fresh values";
        description = "";
        buildType = "Simple";
      };
      components = {
        "data-fresh" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }