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
      identifier = { name = "SafeSemaphore"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Kuklewicz <haskell@list.mightyreason.com>";
      author = "Chris Kuklewicz <haskell@list.mightyreason.com>";
      homepage = "get-URL-from-future";
      url = "";
      synopsis = "Much safer replacement for QSemN and QSem";
      description = "This provides a much safer semaphore than the QSem in base.  Performance has not been compared.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "TestSafeSemaphore" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }