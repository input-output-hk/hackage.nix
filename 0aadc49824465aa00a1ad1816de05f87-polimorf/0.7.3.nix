{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "polimorf";
          version = "0.7.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/polimorf";
        url = "";
        synopsis = "Working with the PoliMorf dictionary";
        description = "The library provides functionality for manipulating PoliMorf, the\nmorphological dictionary for Polish.";
        buildType = "Simple";
      };
      components = {
        polimorf = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.binary
            hsPkgs.text-binary
          ];
        };
      };
    }