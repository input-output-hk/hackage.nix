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
      identifier = { name = "cautious"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Nick Van den Broeck";
      maintainer = "nick.van.den.broeck666@gmail.com";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/Nickske666/cautious#readme";
      url = "";
      synopsis = "Keep track of warnings and errors during calculations.";
      description = "A Cautious monad \"Monoid w => Cautious w e a\" which keeps track of the success of a task. The options are \"CautiousWarning w a\" (where \"CautiousWarning mempty a\" represents \"success\") and \"CautiousError e\". In addition, there is a monadtransformer \"Monad m, Monoid w => CautiousT w e m a\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-hspec-aeson" or (errorHandler.buildDepError "genvalidity-hspec-aeson"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
        ];
        buildable = true;
      };
      tests = {
        "cautious-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cautious" or (errorHandler.buildDepError "cautious"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-aeson" or (errorHandler.buildDepError "genvalidity-hspec-aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          ];
          buildable = true;
        };
      };
    };
  }