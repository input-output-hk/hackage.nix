{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pandoc-japanese-filters";
          version = "0.1.0.1";
        };
        license = "GPL-2.0-only";
        copyright = "(c) Hiromi ISHII 2015";
        maintainer = "Hiromi ISHII <konn.jinro_at_gmail.com>";
        author = "Hiromi ISHII <konn.jinro_at_gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Japanese-specific markup filters for pandoc.";
        description = "Japanese-specific markup filters for pandoc.";
        buildType = "Simple";
      };
      components = {
        exes = {
          tate-math-to-svg-filter = {
            depends  = [
              hsPkgs.base
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.HaTeX
              hsPkgs.HaTeX-qq
              hsPkgs.text
              hsPkgs.shelly
              hsPkgs.effin
            ];
          };
          math-to-svg-filter = {
            depends  = [
              hsPkgs.base
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.HaTeX
              hsPkgs.HaTeX-qq
              hsPkgs.text
              hsPkgs.shelly
              hsPkgs.effin
            ];
          };
          japanese-filter = {
            depends  = [
              hsPkgs.HaTeX
              hsPkgs.HaTeX-qq
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.text
              hsPkgs.hxt
            ];
          };
          env-to-div-filter = {
            depends  = [
              hsPkgs.HaTeX
              hsPkgs.HaTeX-qq
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.text
              hsPkgs.hxt
            ];
          };
        };
      };
    }