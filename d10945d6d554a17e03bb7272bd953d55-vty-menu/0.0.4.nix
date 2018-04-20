{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vty-menu";
          version = "0.0.4";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Timothy Hobbs <timothyhobbs@seznam.cz>";
        author = "Timothy Hobbs & Cheater__, Sergii Rudchenko <rudchenkos@gmail.com>";
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