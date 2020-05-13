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
      identifier = { name = "line"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Jun <me@noraesae.net>";
      maintainer = "Jun <me@noraesae.net>";
      author = "Jun";
      homepage = "https://github.com/noraesae/line";
      url = "";
      synopsis = "Haskell SDK for the LINE API";
      description = "This package exports bindings to LINE APIs.\n\nIt provides the following features:\n\n* Internal auth signature validator\n\n* Webhook handled with handler function or WAI application\n\n* Functions and types for <https://devdocs.line.me/en/#messaging-api LINE Messaging API>\n\nFor example usages, please see the\n<https://github.com/noraesae/line/tree/master/examples examples> directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "line-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."line" or (errorHandler.buildDepError "line"))
            ];
          buildable = true;
          };
        };
      };
    }