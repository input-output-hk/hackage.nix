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
      identifier = { name = "hpc-coveralls"; version = "1.0.8"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2017 Guillaume Nargeot";
      maintainer = "Guillaume Nargeot <guillaume+hackage@nargeot.com>";
      author = "Guillaume Nargeot";
      homepage = "https://github.com/guillaume-nargeot/hpc-coveralls";
      url = "";
      synopsis = "Coveralls.io support for Haskell.";
      description = "This utility converts and sends Haskell projects hpc code coverage to\n<http://coveralls.io/ coverall.io>.\n\n/Usage/\n\nBelow is the simplest example of .travis.yml configuration to use with Travis CI:\n\n> language: haskell\n> ghc: 7.8\n> script:\n>   - cabal configure --enable-tests --enable-library-coverage && cabal build && cabal test\n> after_script:\n>   - cabal install hpc-coveralls\n>   - hpc-coveralls [options] [test-suite-names]\n\nFurther information can be found in the <https://github.com/guillaume-nargeot/hpc-coveralls README>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
          (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "hpc-coveralls" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
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
            (hsPkgs."hpc-coveralls" or (errorHandler.buildDepError "hpc-coveralls"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }