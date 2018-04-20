{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tconfig";
          version = "0.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "DiscipleRayne@gmail.com";
        author = "Anthony Simpson";
        homepage = "";
        url = "";
        synopsis = "Simple text configuration file parser library.";
        description = "This Library can be used to keep track of simple information\nin simple games and other programs.";
        buildType = "Simple";
      };
      components = {
        tconfig = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }