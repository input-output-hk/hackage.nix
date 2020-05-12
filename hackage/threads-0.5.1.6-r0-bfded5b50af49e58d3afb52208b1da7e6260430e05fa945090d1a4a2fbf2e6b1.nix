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
      specVersion = "1.9.2";
      identifier = { name = "threads"; version = "0.5.1.6"; };
      license = "BSD-3-Clause";
      copyright = "2010–2012 Bas van Dijk & Roel van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
      homepage = "https://github.com/basvandijk/threads";
      url = "";
      synopsis = "Fork threads and wait for their result";
      description = "This package provides functions to fork threads and\nwait for their result, whether it's an exception or a\nnormal value.\n\nBesides waiting for the termination of a single thread\nthis packages also provides functions to wait for a\ngroup of threads to terminate.\n\nThis package is similar to the\n@threadmanager@, @async@ and @spawn@ packages.\nThe advantages of this package are:\n\n* Simpler API.\n\n* More efficient in both space and time.\n\n* No space-leak when forking a large number of threads.\n\n* Correct handling of asynchronous exceptions.\n\n* GHC specific functionality like @forkOn@ and @forkIOWithUnmask@.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "test-threads" = {
          depends = [
            (hsPkgs."threads" or (errorHandler.buildDepError "threads"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."concurrent-extra" or (errorHandler.buildDepError "concurrent-extra"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }