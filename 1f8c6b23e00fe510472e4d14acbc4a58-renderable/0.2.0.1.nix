{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "renderable";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "schell.scivally@synapsegroup.com";
        author = "Schell Scivally";
        homepage = "https://github.com/schell/renderable";
        url = "";
        synopsis = "An API for managing renderable resources.";
        description = "The `renderable` package provides a method for managing resources\nof a rendering system. Resources are allocated according to a strategy and\nreleased automatically when your renderable data changes. These changes are\ndetected during each draw call based on the hash of your renderable\ndatatype.\nThis package is meant to be pulled in as a portion of your rendering system.\nIt aims to ease the task of managing allocation of resources over time as\nthe value of your renderable datatype changes.";
        buildType = "Simple";
      };
      components = {
        "renderable" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.transformers
          ];
        };
      };
    }