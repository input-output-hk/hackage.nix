{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hpc-coveralls"; version = "0.2.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          ];
        buildable = true;
        };
      exes = {
        "hpc-coveralls" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            ];
          buildable = true;
          };
        "run-cabal-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }