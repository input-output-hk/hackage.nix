{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hpc-coveralls";
          version = "1.0.9";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2015 Guillaume Nargeot";
        maintainer = "Guillaume Nargeot <guillaume+hackage@nargeot.com>";
        author = "Guillaume Nargeot";
        homepage = "https://github.com/guillaume-nargeot/hpc-coveralls";
        url = "";
        synopsis = "Coveralls.io support for Haskell.";
        description = "This utility converts and sends Haskell projects hpc code coverage to\n<http://coveralls.io/ coverall.io>.\n\n/Usage/\n\nBelow is the simplest example of .travis.yml configuration to use with Travis CI:\n\n> language: haskell\n> ghc: 7.8\n> script:\n>   - cabal configure --enable-tests --enable-library-coverage && cabal build && cabal test\n> after_script:\n>   - cabal install hpc-coveralls\n>   - hpc-coveralls [options] [test-suite-names]\n\nFurther information can be found in the <https://github.com/guillaume-nargeot/hpc-coveralls README>.";
        buildType = "Simple";
      };
      components = {
        "hpc-coveralls" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.cmdargs
            hsPkgs.curl
            hsPkgs.directory
            hsPkgs.directory-tree
            hsPkgs.hpc
            hsPkgs.process
            hsPkgs.pureMD5
            hsPkgs.retry
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.transformers
          ];
        };
        exes = {
          "hpc-coveralls" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.cmdargs
              hsPkgs.curl
              hsPkgs.directory
              hsPkgs.directory-tree
              hsPkgs.hpc
              hsPkgs.process
              hsPkgs.pureMD5
              hsPkgs.retry
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.transformers
            ];
          };
          "run-cabal-test" = {
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
          "test-all" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hpc-coveralls
              hsPkgs.HUnit
            ];
          };
        };
      };
    }