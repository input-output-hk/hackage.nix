{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "polimorf";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/polimorf";
        url = "";
        synopsis = "Working with the PoliMorf dictionary";
        description = "The library provides functionality for manipulating PoliMorf, the\nmorphological dictionary for Polish.\nIn particular, the library exports functions which can be used to\nmerge the PoliMorf with another dictionary resources.";
        buildType = "Simple";
      };
      components = {
        polimorf = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.binary
            hsPkgs.dawg
          ];
        };
      };
    }