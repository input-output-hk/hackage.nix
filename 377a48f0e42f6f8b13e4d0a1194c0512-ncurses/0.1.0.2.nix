{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ncurses";
          version = "0.1.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "http://john-millikin.com/software/bindings/ncurses/";
        url = "";
        synopsis = "Modernised bindings to GNU ncurses";
        description = "";
        buildType = "Simple";
      };
      components = {
        ncurses = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
          libs = [
            pkgs.panel
            pkgs.ncursesw
          ];
        };
      };
    }