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
      identifier = { name = "streaming-concurrency"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Concurrency support for the streaming ecosystem";
      description = "The primary purpose for this library is to be able to merge multiple\n@Stream@s together.  However, it is possible to build higher\nabstractions on top of this to be able to also feed multiple\nstreams.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-with" or (errorHandler.buildDepError "streaming-with"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      tests = {
        "merging" = {
          depends = [
            (hsPkgs."streaming-concurrency" or (errorHandler.buildDepError "streaming-concurrency"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }