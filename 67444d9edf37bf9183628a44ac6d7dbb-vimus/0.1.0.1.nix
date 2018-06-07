{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vimus";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "An MPD client with vim-like key bindings";
        description = "An MPD client with vim-like key bindings\n\n<https://github.com/vimus/vimus#readme>";
        buildType = "Simple";
      };
      components = {
        vimus = {
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
          vimus = {
            depends  = [
              hsPkgs.base
              hsPkgs.vimus
            ];
          };
        };
        tests = {
          spec = {
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