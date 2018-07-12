{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "termbox-bindings";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "neuman.vong@gmail.com";
        author = "Neuman Vong";
        homepage = "https://github.com/luciferous/termbox-bindings";
        url = "";
        synopsis = "Bindings to the termbox library";
        description = "";
        buildType = "Simple";
      };
      components = {
        "termbox-bindings" = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.termbox ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
        exes = {
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.termbox-bindings
            ];
          };
        };
      };
    }