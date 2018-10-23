{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hpc-coveralls";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Guillaume Nargeot";
      maintainer = "Guillaume Nargeot <guillaume+hackage@nargeot.com>";
      author = "Guillaume Nargeot";
      homepage = "https://github.com/guillaume-nargeot/hpc-coveralls/issues";
      url = "";
      synopsis = "Coveralls.io support for Haskell.";
      description = "This utility converts and sends Haskell projects hpc code coverage to\n<http://coveralls.io/ coverall.io>.\n\n/Usage/\n\nCommands to add to your project .travis.yml when using Travis CI:\n\n> before_install:\n>   - cabal install hpc-coveralls\n> script:\n>   - cabal configure --enable-tests --enable-library-coverage && cabal build\n>   - run-cabal-test [options] [cabal-test-options]\n> after_script:\n>   - hpc-coveralls [options] [test-suite-name]\n\nFurther information can be found in the <https://github.com/guillaume-nargeot/hpc-coveralls README>.";
      buildType = "Simple";
    };
    components = {
      "hpc-coveralls" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cmdargs)
          (hsPkgs.curl)
          (hsPkgs.hpc)
          (hsPkgs.regex-posix)
        ];
      };
      exes = {
        "hpc-coveralls" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.curl)
            (hsPkgs.hpc)
            (hsPkgs.regex-posix)
          ];
        };
        "run-cabal-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.regex-posix)
            (hsPkgs.split)
          ];
        };
      };
      tests = {
        "test-all" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.curl)
            (hsPkgs.hpc)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }