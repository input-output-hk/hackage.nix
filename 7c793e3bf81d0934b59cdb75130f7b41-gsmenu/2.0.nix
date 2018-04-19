{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      use_xft = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gsmenu";
          version = "2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "athas@sigkill.dk";
        author = "Troels Henriksen";
        homepage = "http://sigkill.dk/programs/gsmenu";
        url = "";
        synopsis = "A visual generic menu";
        description = "Standalone port of XMonadContrib's GridSelect.";
        buildType = "Custom";
      };
      components = {
        exes = {
          gsmenu = {
            depends  = [
              hsPkgs.X11
              hsPkgs.X11-xshape
              hsPkgs.mtl
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.getflag
              hsPkgs.utf8-string
            ] ++ pkgs.lib.optional _flags.use_xft hsPkgs.X11-xft;
          };
        };
      };
    }