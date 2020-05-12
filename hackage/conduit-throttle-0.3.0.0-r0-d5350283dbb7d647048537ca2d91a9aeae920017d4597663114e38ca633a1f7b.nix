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
      identifier = { name = "conduit-throttle"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/conduit-throttle#readme";
      url = "";
      synopsis = "Throttle Conduit Producers";
      description = "This packages is based on the throttle-io-stream package and provides functionality for throttling Conduit producers according to a provided configuration.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."throttle-io-stream" or (errorHandler.buildDepError "throttle-io-stream"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          ];
        buildable = true;
        };
      tests = {
        "conduit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."throttle-io-stream" or (errorHandler.buildDepError "throttle-io-stream"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."conduit-throttle" or (errorHandler.buildDepError "conduit-throttle"))
            (hsPkgs."throttle-io-stream" or (errorHandler.buildDepError "throttle-io-stream"))
            (hsPkgs."stm-conduit" or (errorHandler.buildDepError "stm-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }