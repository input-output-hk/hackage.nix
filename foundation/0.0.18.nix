{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      experimental = false;
      bench-all = false;
      minimal-deps = false;
      bounds-check = false;
      doctest = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "foundation";
          version = "0.0.18";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2017 Vincent Hanquez <vincent@snarc.org>, 2017- Foundation Maintainers";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/haskell-foundation/foundation";
        url = "";
        synopsis = "Alternative prelude with batteries and no dependencies";
        description = "A custom prelude with no dependencies apart from base.\n\nThis package has the following goals:\n\n* provide a base like sets of modules that provide a consistent set of features and bugfixes across multiple versions of GHC (unlike base).\n\n* provide a better and more efficient prelude than base's prelude.\n\n* be self-sufficient: no external dependencies apart from base.\n\n* provide better data-types: packed unicode string by default, arrays.\n\n* Better numerical classes that better represent mathematical thing (No more all-in-one Num).\n\n* Better I/O system with less Lazy IO\n\n* Usual partial functions distinguished through type system";
        buildType = "Simple";
      };
      components = {
        foundation = {
          depends  = [
            hsPkgs.base
            hsPkgs.basement
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
        };
        tests = {
          check-foundation = {
            depends  = [
              hsPkgs.base
              hsPkgs.basement
              hsPkgs.foundation
            ];
          };
          doctest = {
            depends  = optionals (!_flags.minimal-deps && _flags.doctest) [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = optionals (!(_flags.minimal-deps || compiler.isGhc)) ([
              hsPkgs.base
              hsPkgs.gauge
              hsPkgs.basement
              hsPkgs.foundation
            ] ++ optionals _flags.bench-all [
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.vector
              hsPkgs.bytestring
            ]);
          };
        };
      };
    }