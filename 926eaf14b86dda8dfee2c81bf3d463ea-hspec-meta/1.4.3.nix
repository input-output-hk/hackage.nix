{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec-meta";
          version = "1.4.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011-2012 Trystan Spangler, (c) 2011-2012 Simon Hengel, (c) 2011 Greg Weber";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "http://hspec.github.com/";
        url = "";
        synopsis = "A version of Hspec which is used to test Hspec itself";
        description = "A stable version of Hspec which is used to test the\nin-development version of Hspec.";
        buildType = "Simple";
      };
      components = {
        "hspec-meta" = {
          depends  = [
            hsPkgs.base
            hsPkgs.setenv
            hsPkgs.silently
            hsPkgs.ansi-terminal
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.hspec-expectations
          ];
        };
        exes = {
          "hspec-meta-discover" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
      };
    }