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
      specVersion = "1.10";
      identifier = { name = "process-sequential"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/process-sequential";
      url = "";
      synopsis = "A test suite for the complex multi files multi level processment.";
      description = "This library is intended to be a testsuite for some recursive multi file multiprocessment using some system executable that processes multiple files creating the resulting one (the \\\"sox\\\" can be a good example). The purposes are to avoid leakage of resources if the number of files are too great to be processed at once, to use multiple sequential processment schemes for the same executable and to create to some extent complex processment environment. Nevertheless, there is no guarantees that the test will be successful and such an environment can be created using such a scheme. Please, do not use at the moment in the production without additional thorough testing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
          (hsPkgs."sublists" or (errorHandler.buildDepError "sublists"))
        ];
        buildable = true;
      };
    };
  }