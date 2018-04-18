{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pandoc-lens";
          version = "0.6.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Ben Gamari";
        maintainer = "ben@smart-cactus.org";
        author = "Ben Gamari";
        homepage = "http://github.com/bgamari/pandoc-lens";
        url = "";
        synopsis = "Lenses for Pandoc documents";
        description = "Lenses for Pandoc documents.";
        buildType = "Simple";
      };
      components = {
        pandoc-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.pandoc-types
            hsPkgs.lens
          ];
        };
      };
    }