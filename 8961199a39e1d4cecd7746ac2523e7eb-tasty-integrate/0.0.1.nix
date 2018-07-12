{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tasty-integrate";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jfeltz@gmail.com";
        author = "John P. Feltz";
        homepage = "";
        url = "";
        synopsis = "automated integration of QuickCheck properties into tasty suites";
        description = "This brings automated test-suite creation (such as what naturally\noccurs in Eclipse) to the Haskell world. This is a set of programs to automate\nthe otherwise manual editing needed to combine new tests (QuickCheck) into\ntest-groupings (tasty test framework).\n\nGiven a set of Modules containing properties:\n\n> \$ ls tests/Data/*\n> QcIntegrated.hs  QcModulePath.hs  QcSuite.hs\n\nExample use on a suite already importing the Modules above:\n\n> \$ tasty-integrate --masking test-suites/Suites.hs tests/Data/QcIntegrated.hs\n> (changed) suite at: test-suites/Suite.hs\n> with:\n>  added:\n>   none\n>  removed:\n>    Data.QcModulePath, 2 property(s)\n>    Data.QcSuite, 1 property(s)\n>  modified:\n>   none\n>  unmodified:\n>    Data.QcIntegrated, 3 property(s)\n\nThe created suites are IDE parsable, and errors can resolve to their original file.\nSo using the provided ide-format program from this package:\n\n> \$ ./build/dist/suite/suite | ide-format\n> tests/Data/QcSuite.hs|20 error | buf_isomorphism\n>   *** Failed! Falsifiable (after 1 test):";
        buildType = "Simple";
      };
      components = {
        exes = {
          "ide-format" = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.parsec
              hsPkgs.system-filepath
              hsPkgs.text
            ];
          };
          "tasty-integrate" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.directory
              hsPkgs.cmdargs
              hsPkgs.system-filepath
              hsPkgs.language-haskell-extract
              hsPkgs.haskell-src-exts
              hsPkgs.regex-posix
              hsPkgs.split
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.either
              hsPkgs.lens
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        tests = {
          "suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.stm
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.directory
              hsPkgs.system-filepath
              hsPkgs.quickcheck-property-comb
              hsPkgs.stringbuilder
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.split
              hsPkgs.text
              hsPkgs.regex-posix
              hsPkgs.haskell-src-exts
              hsPkgs.bytestring
            ];
          };
        };
      };
    }