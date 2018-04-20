{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pandoc-unlit";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2012 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "Literate Haskell support for GitHub's Markdown flavor";
        description = "Documentation is here: <https://github.com/sol/pandoc-unlit#readme>";
        buildType = "Simple";
      };
      components = {
        exes = {
          pandoc-unlit = {
            depends  = [
              hsPkgs.base
              hsPkgs.pandoc
            ];
          };
        };
      };
    }