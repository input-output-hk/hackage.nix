{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "morfeusz";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/morfeusz";
        url = "";
        synopsis = "Bindings to the morphological analyser Morfeusz";
        description = "The library provides bindings to the morphological analyser Morfeusz\n<http://sgjp.pl/morfeusz/>.";
        buildType = "Custom";
      };
      components = {
        morfeusz = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.directory
          ];
          libs = [ pkgs.morfeusz ];
        };
      };
    }