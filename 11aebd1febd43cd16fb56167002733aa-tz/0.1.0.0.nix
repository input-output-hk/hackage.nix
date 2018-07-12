{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      template-haskell = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tz";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Mihaly Barasz <klao@nilcons.com>, Gergely Risko <errge@nilcons.com>";
        author = "Mihaly Barasz, Gergely Risko";
        homepage = "https://github.com/nilcons/haskell-tz";
        url = "";
        synopsis = "Efficient time zone handling";
        description = "The goal of this package is to provide a library that can read time\nzone info files (aka. Olson files), and does time zone conversions\nin a /pure/ and /efficient/ way.\n\nWe also provide platform-independent and/or compiled-in access to\nthe standard Time Zone Dabase by the means of the companion @tzdata@\npackage <http://hackage.haskell.org/package/tzdata>.\n\nThe package is currently in an alpha phase, I'm still experimenting\nwith different ideas wrt. scope\\/API\\/implementation\\/etc. All\ncomments are welcome!";
        buildType = "Simple";
      };
      components = {
        "tz" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.time
            hsPkgs.tzdata
            hsPkgs.vector
          ] ++ pkgs.lib.optional _flags.template-haskell hsPkgs.template-haskell;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.tz
              hsPkgs.base
              hsPkgs.bindings-posix
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.vector
            ];
          };
          "th-test" = {
            depends  = [
              hsPkgs.tz
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th
            ];
          };
          "test-all" = {
            depends  = [
              hsPkgs.tz
              hsPkgs.tzdata
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.tz
              hsPkgs.base
              hsPkgs.bindings-posix
              hsPkgs.criterion
              hsPkgs.time
              hsPkgs.timezone-olson
              hsPkgs.timezone-series
              hsPkgs.unix
            ];
          };
          "bench_c" = {
            depends  = [
              hsPkgs.tz
              hsPkgs.base
              hsPkgs.bindings-posix
              hsPkgs.criterion
              hsPkgs.unix
            ];
          };
          "bench_greg" = {
            depends  = [
              hsPkgs.tz
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.lens
              hsPkgs.thyme
              hsPkgs.time
            ];
          };
          "bench_conv" = {
            depends  = [
              hsPkgs.tz
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.time
            ];
          };
        };
      };
    }