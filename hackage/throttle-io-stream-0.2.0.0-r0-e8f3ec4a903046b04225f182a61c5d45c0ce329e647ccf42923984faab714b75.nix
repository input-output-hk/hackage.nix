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
      identifier = { name = "throttle-io-stream"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/io-throttle#readme";
      url = "";
      synopsis = "Throttler between arbitrary IO producer and consumer functions";
      description = "This packages provides functionality for throttling IO using general IO callbacks. The throttling depends on a provided configuration. The supported throttling modes are producer throttling, consumer throttling or producer & consumer throttling.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          ];
        buildable = true;
        };
      tests = {
        "throttle-io-stream-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."throttle-io-stream" or (errorHandler.buildDepError "throttle-io-stream"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."say" or (errorHandler.buildDepError "say"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        };
      };
    }