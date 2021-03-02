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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "apache-md5"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2009, 2010, 2012, 2013 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško <peter.trsko@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Apache server specific MD5 digest algorighm.";
      description = "Haskell implementation of Apache HTTP server specific MD5 digest algorithm\nthat uses OpenSSL @MD5()@ function.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."crypto" or (errorHandler.sysDepError "crypto")) ];
        buildable = true;
        };
      tests = {
        "apache-md5-unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          libs = [ (pkgs."crypto" or (errorHandler.sysDepError "crypto")) ];
          buildable = true;
          };
        };
      benchmarks = {
        "apache-md5-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          libs = [ (pkgs."crypto" or (errorHandler.sysDepError "crypto")) ];
          buildable = true;
          };
        };
      };
    }