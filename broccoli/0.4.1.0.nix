{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "broccoli";
          version = "0.4.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "evanrinehart@gmail.com";
        author = "Evan Rinehart";
        homepage = "";
        url = "";
        synopsis = "Small library for interactive functional programs.";
        description = "Small library for interactive functional programs.";
        buildType = "Simple";
      };
      components = {
        broccoli = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.stm
          ];
        };
      };
    }