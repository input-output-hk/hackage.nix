{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tz";
          version = "0.0.0.2";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Mihaly Barasz <klao@nilcons.com>, Gergely Risko <errge@nilcons.com>";
        author = "Mihaly Barasz, Gergely Risko";
        homepage = "https://github.com/nilcons/haskell-tz";
        url = "";
        synopsis = "Time zones database and library";
        description = "This package has two main goals:\n\n* To distribute the standard time zone database in a cabal package,\nso that it can be used in Haskell programs uniformly on all\nplatforms.\n\n* To provide a library that can read time zone info files\n(aka. Olson files), and does time zone conversions in a /pure/ and\n/efficient/ way.\n\nThe current version ships the @2014b@ version of the time zone\ndatabase. See: <http://www.iana.org/time-zones> for more info.\n\nThe package is currently in a draft phase, I'm still experimenting\nwith different ideas wrt. scope\\/API\\/implementation\\/etc. All comments\nare welcome!";
        buildType = "Simple";
      };
      components = {
        "tz" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.vector
          ];
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
        };
      };
    }