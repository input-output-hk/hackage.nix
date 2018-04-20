{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test-properties = true;
      test-hunit = false;
      test-doctests = false;
      test-hlint = true;
      threaded = true;
      llvm = false;
      optimized = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ed25519";
          version = "0.0.1.0";
        };
        license = "MIT";
        copyright = "Copyright (c) Austin Seipp 2013";
        maintainer = "Austin Seipp <aseipp@pobox.com>";
        author = "Austin Seipp";
        homepage = "http://thoughtpolice.github.com/hs-ed25519";
        url = "";
        synopsis = "ed25519 cryptographic signatures";
        description = "This package provides a simple, portable implementation of the\ned25519 public-key signature system. It also includes support for\ndetached signatures.\n\nThe underlying implementation uses the @ref10@ implementation of\ned25519 from SUPERCOP, and should be relatively fast.\n\nFor more information (including how to get a copy of the software)\nvisit <http://ed25519.cr.yp.to>.";
        buildType = "Custom";
      };
      components = {
        ed25519 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          properties = {
            depends  = pkgs.lib.optionals (!(!_flags.test-properties)) [
              hsPkgs.base
              hsPkgs.ed25519
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
            ];
          };
          hunit = {
            depends  = pkgs.lib.optionals (!(!_flags.test-hunit)) [
              hsPkgs.base
              hsPkgs.ed25519
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-th
            ];
          };
          hlint = {
            depends  = pkgs.lib.optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
          doctests = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.deepseq
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.semigroups
            ];
          };
        };
        benchmarks = {
          bench1 = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.ed25519
            ];
          };
        };
      };
    }