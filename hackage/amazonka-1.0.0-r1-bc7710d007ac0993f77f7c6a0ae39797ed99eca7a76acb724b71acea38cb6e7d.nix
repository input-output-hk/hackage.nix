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
      identifier = { name = "amazonka"; version = "1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Comprehensive Amazon Web Services SDK";
      description = "This client library contains request and response logic to communicate\nwith Amazon Web Service compatible APIs using the types supplied by the\nvarious @amazonka-*@ service libraries. See the <http://hackage.haskell.org/packages/#cat:AWS AWS>\ncategory on Hackage for supported services.\n\nTo get started, import the desired @amazonka-*@ library (such as\n<http://hackage.haskell.org/package/amazonka-ml/docs/Network-AWS-MachineLearning.html Network.AWS.MachineLearning>)\nand one of the following:\n\n* \"Control.Monad.Trans.AWS\": The 'Control.Monad.Trans.AWS.AWST' transformer\nand generalised operations.\n\n* \"Network.AWS\": The 'Network.AWS.AWS' monad and 'Network.AWS.MonadAWS' type\nclass for automatically lifting operations when embedded as a layer in a transformer stack.\nThis is built upon \"Control.Monad.Trans.AWS\".\n\nBoth 'Control.Monad.Trans.AWS.AWST' (and 'Network.AWS.AWS') and the provided\nfunctions are built upon the 'Control.Monad.Trans.Free' DSL defined in\n\"Network.AWS.Free\". This allows writing a custom interpreter (say, for\nmocking purposes) and defining your own AWS logic if desired.\n\nGHC 7.8.4 and higher is officially supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }