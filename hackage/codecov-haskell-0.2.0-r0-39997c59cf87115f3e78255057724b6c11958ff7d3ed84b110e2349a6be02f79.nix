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
      identifier = { name = "codecov-haskell"; version = "0.2.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "codecov-haskell" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        "run-cabal-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."codecov-haskell" or (errorHandler.buildDepError "codecov-haskell"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }