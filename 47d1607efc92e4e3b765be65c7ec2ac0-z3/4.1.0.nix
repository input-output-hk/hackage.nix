{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "z3";
          version = "4.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012-2015, Iago Abal, David Castro";
        maintainer = "Iago Abal <mail@iagoabal.eu>";
        author = "Iago Abal <mail@iagoabal.eu>,\nDavid Castro <david.castro.dcp@gmail.com>";
        homepage = "http://bitbucket.org/iago/z3-haskell";
        url = "";
        synopsis = "Bindings for the Z3 Theorem Prover";
        description = "Bindings for the (now open source!) Z3 4./x/ Theorem Prover (<https://github.com/Z3Prover/z3>).\n\n* \"Z3.Base.C\" provides the raw foreign imports from Z3's C API.\n\n* \"Z3.Base\" does the marshaling of values between Haskell and C,\nand transparently handles reference counting of Z3 objects for you.\n\n* \"Z3.Monad\" provides a convenient monadic wrapper for the common usage scenario.\n\nExamples: <https://bitbucket.org/iago/z3-haskell/src/tip/examples>\n\nChangelog: <https://bitbucket.org/iago/z3-haskell/src/tip/CHANGES.md>\n\nInstallation:\n\n* /Unix-like/: Just be sure to use the standard locations for\ndynamic libraries (\\/usr\\/lib) and header files (\\/usr\\/include),\nor else use the --extra-lib-dirs and --extra-include-dirs Cabal flags.\n\n(Hackage reports a build failure because Z3's library is missing.)";
        buildType = "Simple";
      };
      components = {
        z3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ];
          libs = if system.isOsx || system.isWindows
            then [ pkgs.z3 ]
            else [
              pkgs.gomp
              pkgs.z3
              pkgs.gomp
            ];
        };
        exes = {
          examples = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.z3
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.z3
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }