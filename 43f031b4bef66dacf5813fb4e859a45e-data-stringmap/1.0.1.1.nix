{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      with-sizeable = false;
      test-properties = true;
      test-strict = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-stringmap";
          version = "1.0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Uwe Schmidt (uwe@fh-wedel.de), Sebastian Philipp (sebastian@spawnhost.de)";
        author = "Uwe Schmidt, Sebastian Philipp";
        homepage = "";
        url = "";
        synopsis = "An efficient implementation of maps from strings to arbitrary values";
        description = "An efficient implementation of maps from strings to arbitrary values.\nValues can associated with an arbitrary byte key.\nSearching for keys is very fast, but\nthe prefix tree probably consumes more memory than\n\"Data.Map\". The main differences are the special\n'prefixFind' functions, which can be used to perform prefix queries.";
        buildType = "Simple";
      };
      components = {
        data-stringmap = {
          depends  = ([
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.binary
            hsPkgs.containers
          ] ++ pkgs.lib.optional _flags.test-strict hsPkgs.bytestring) ++ pkgs.lib.optional _flags.with-sizeable hsPkgs.data-size;
        };
        tests = {
          properties = {
            depends  = pkgs.lib.optionals (!(!_flags.test-properties)) ([
              hsPkgs.data-stringmap
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-heap-view
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
            ] ++ pkgs.lib.optional _flags.with-sizeable hsPkgs.data-size);
          };
          strict = {
            depends  = pkgs.lib.optionals (!(!_flags.test-strict)) ([
              hsPkgs.data-stringmap
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-heap-view
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
            ] ++ pkgs.lib.optional _flags.with-sizeable hsPkgs.data-size);
          };
        };
      };
    }