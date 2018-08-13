{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      experimental = false;
      bench-all = false;
      bounds-check = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "foundation";
        version = "0.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/haskell-foundation/foundation";
      url = "";
      synopsis = "Alternative prelude with batteries and no dependencies";
      description = "A custom prelude with no dependencies apart from base.\n\nThis package has the following goals:\n\n* provide a base like sets of modules that provide a consistent set of features and bugfixes across multiple versions of GHC (unlike base).\n\n* provide a better and more efficient prelude than base's prelude.\n\n* be self-sufficient: no external dependencies apart from base.\n\n* provide better data-types: packed unicode string by default, arrays.\n\n* Better numerical classes that better represent mathematical thing (No more all-in-one Num).\n\n* Better I/O system with less Lazy IO\n\n* Usual partial functions distinguished through type system";
      buildType = "Simple";
    };
    components = {
      "foundation" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
      };
      tests = {
        "test-foundation" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.foundation)
          ];
        };
        "check-foundation" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.foundation)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.foundation)
          ] ++ pkgs.lib.optionals (_flags.bench-all) [
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }