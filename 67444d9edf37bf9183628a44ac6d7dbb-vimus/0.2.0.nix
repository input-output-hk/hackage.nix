{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vimus";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "(c) 2010-2014 Simon Hengel,\n(c) 2010-2014 Markus Klinik,\n(c) 2012-2014 Niklas Haas,\n(c) 2012-2014 Joachim Fasting,\n(c) 2012-2014 Sylvain Henry,\n(c) 2013-2014 Matvey Aksenov";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "An MPD client with vim-like key bindings";
        description = "An MPD client with vim-like key bindings\n\n<https://github.com/vimus/vimus#readme>";
        buildType = "Simple";
      };
      components = {
        "vimus" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.wcwidth
            hsPkgs.libmpd
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.data-default
            hsPkgs.template-haskell
          ];
          libs = [ pkgs.ncursesw ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
        exes = {
          "vimus" = {
            depends  = [
              hsPkgs.base
              hsPkgs.vimus
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.vimus
              hsPkgs.data-default
              hsPkgs.wcwidth
              hsPkgs.mtl
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.transformers
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }