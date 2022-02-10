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
      identifier = { name = "tasty-integrate"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jfeltz@gmail.com";
      author = "John P. Feltz";
      homepage = "";
      url = "";
      synopsis = "automated integration of QuickCheck properties into tasty suites ";
      description = "This brings automated test-suite creation (such as what naturally\noccurs in Eclipse) to the Haskell world. This is a set of programs to automate\nthe otherwise manual editing needed to combine new tests (QuickCheck) into\ntest-groupings (tasty test framework).\n\nGiven a set of Modules containing properties:\n\n> $ ls tests/Data/*\n> QcIntegrated.hs  QcModulePath.hs  QcSuite.hs\n\nExample use on a suite already importing the Modules above:\n\n> $ tasty-integrate --masking test-suites/Suites.hs tests/Data/QcIntegrated.hs\n> (changed) suite at: test-suites/Suite.hs\n> with:\n>  added:\n>   none\n>  removed:\n>    Data.QcModulePath, 2 property(s)\n>    Data.QcSuite, 1 property(s)\n>  modified:\n>   none\n>  unmodified:\n>    Data.QcIntegrated, 3 property(s)\n\nThe created suites are IDE parsable, and errors can resolve to their original file.\nSo using the provided ide-format program from this package:\n\n> $ ./build/dist/suite/suite | ide-format\n> tests/Data/QcSuite.hs|20 error | buf_isomorphism\n>   *** Failed! Falsifiable (after 1 test):";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ide-format" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "tasty-integrate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."language-haskell-extract" or (errorHandler.buildDepError "language-haskell-extract"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      tests = {
        "suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."quickcheck-property-comb" or (errorHandler.buildDepError "quickcheck-property-comb"))
            (hsPkgs."stringbuilder" or (errorHandler.buildDepError "stringbuilder"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }