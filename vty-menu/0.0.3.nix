{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vty-menu";
          version = "0.0.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Timothy Hobbs <timothyhobbs@seznam.cz>";
        author = "Timothy Hobbs & Cheater__";
        homepage = "";
        url = "";
        synopsis = "A lib for displaying a menu and getting a selection using VTY";
        description = "";
        buildType = "Simple";
      };
      components = {
        vty-menu = {
          depends  = [
            hsPkgs.base
            hsPkgs.vty
          ];
        };
        exes = { vty-menu = {}; };
      };
    }