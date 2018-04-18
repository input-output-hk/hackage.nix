{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      bundled = false;
      opengl = false;
    } // flags;
    in {
      package = {
        specVersion = "1.24";
        identifier = {
          name = "fltkhs";
          version = "0.5.3.4";
        };
        license = "MIT";
        copyright = "© 2017 Aditya Siram All Rights Reserved";
        maintainer = "aditya.siram@gmail.com";
        author = "Aditya Siram";
        homepage = "http://github.com/deech/fltkhs";
        url = "";
        synopsis = "FLTK bindings";
        description = "Low level bindings for the FLTK GUI toolkit. For installation and quick start instruction please scroll all the way down to the README.";
        buildType = "Custom";
      };
      components = {
        fltkhs = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
        exes = {
          fltkhs-fluidtohs = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.fltkhs
              hsPkgs.parsec
              hsPkgs.directory
              hsPkgs.mtl
            ];
          };
          fltkhs-buttons = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
        };
      };
    }