{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "codecov-haskell";
          version = "0.4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Guillaume Nargeot";
        maintainer = "Guillaume Nargeot <guillaume+hackage@nargeot.com>";
        author = "Guillaume Nargeot";
        homepage = "https://github.com/guillaume-nargeot/codecov-haskell";
        url = "";
        synopsis = "Codecov.io support for Haskell.";
        description = "This utility converts and sends Haskell projects hpc code coverage to\n<http://codecov.io/ codecov.io>.\n\n/Usage/\n\nBelow is the simplest example of .travis.yml configuration to use with Travis CI:\n\n> language: haskell\n> ghc: 7.8\n> script:\n>   - cabal configure --enable-tests --enable-library-coverage && cabal build && cabal test\n> after_script:\n>   - cabal install codecov-haskell\n>   - codecov-haskell [options] [test-suite-names]\n\nFurther information can be found in the <https://github.com/guillaume-nargeot/codecov-haskell README>.";
        buildType = "Simple";
      };
      components = {
        codecov-haskell = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cmdargs
            hsPkgs.curl
            hsPkgs.hpc
            hsPkgs.safe
            hsPkgs.split
          ];
        };
        exes = {
          codecov-haskell = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cmdargs
              hsPkgs.curl
              hsPkgs.hpc
              hsPkgs.safe
              hsPkgs.split
            ];
          };
          run-cabal-test = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.process
              hsPkgs.regex-posix
              hsPkgs.split
            ];
          };
        };
        tests = {
          test-all = {
            depends  = [
              hsPkgs.base
              hsPkgs.codecov-haskell
              hsPkgs.HUnit
            ];
          };
        };
      };
    }