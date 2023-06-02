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
      specVersion = "2.0";
      identifier = { name = "leanpub-wreq"; version = "1.1.0.4"; };
      license = "MIT";
      copyright = "2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/leanpub";
      url = "";
      synopsis = "Use the Leanpub API via Wreq";
      description = "This package helps you make requests to the\n<https://leanpub.com/help/api Leanpub API> in conjunction with\nthe <https://hackage.haskell.org/package/wreq wreq> package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."leanpub-concepts" or (errorHandler.buildDepError "leanpub-concepts"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          ];
        buildable = true;
        };
      };
    }