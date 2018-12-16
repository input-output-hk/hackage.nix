{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hpc-coveralls";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Guillaume Nargeot";
      maintainer = "Guillaume Nargeot <guillaume+hackage@nargeot.com>";
      author = "Guillaume Nargeot";
      homepage = "";
      url = "";
      synopsis = "Coveralls.io support for Haskell.";
      description = "This utility converts and sends Haskell projects hpc code coverage to <http://coveralls.io/ coverall.io>.\n\nAt the moment, only <http://travis-ci.org Travis CI> is supported, but other CI services will be supported soon.\n\n/Usage/\n\nCommands to add to your project .travis.yml:\n\n> before_install:\n>   - cabal install hpc-coveralls\n> script:\n>   - cabal configure --enable-tests --enable-library-coverage && cabal build\n>   - run-cabal-test [optional-cabal-test-arguments]\n> after_script:\n>   - hpc-coveralls [your-test-suite-name]\n\n/The run-cabal-test command/\n\nWhen using hpc 0.6, 'cabal test' outputs an error message and exits with the error code 1, which results in a build failure.\n\nIn order to prevent this from happening, hpc-coveralls provides the 'run-cabal-test' command which runs 'cabal test' and returns with 0 if the regex '^Test suite .*: FAIL\$' never matches any line of the output.\n\nThis hpc issue should be fixed in version 0.7, which is provided by GHC 7.8 (Travis CI currently only provides GHC 7.6).\n\n/Limitations/\n\nAs Coveralls doesn't support yet partial-line coverage, the following convention is used to represent line coverage with line hit counts:\n\n* 0 : the line is never hit,\n\n* 1 : the line is partially covered,\n\n* 2 : the line is fully covered.\n\nFurther information can be found in the <https://github.com/guillaume-nargeot/hpc-coveralls README>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.curl)
          (hsPkgs.hpc)
        ];
      };
      exes = {
        "hpc-coveralls" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.curl)
            (hsPkgs.hpc)
          ];
        };
        "run-cabal-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.regex-posix)
          ];
        };
      };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.curl)
            (hsPkgs.hpc)
            (hsPkgs.HUnit)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }