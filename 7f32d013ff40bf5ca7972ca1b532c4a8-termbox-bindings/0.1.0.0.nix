{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "termbox-bindings";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "neuman.vong@gmail.com";
        author = "Neuman Vong";
        homepage = "github.com/luciferous/termbox-bindings";
        url = "";
        synopsis = "Bindings to the termbox library";
        description = "";
        buildType = "Custom";
      };
      components = {
        termbox-bindings = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.termbox ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.termbox-bindings
            ];
          };
        };
      };
    }