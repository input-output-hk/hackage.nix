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
    flags = { opt = false; };
    package = {
      specVersion = "3.6";
      identifier = { name = "glean-lsp"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Facebook, All Rights Reserved";
      maintainer = "Glean-team@fb.com";
      author = "Facebook, Inc.";
      homepage = "https://github.com/facebookincubator/Glean";
      url = "";
      synopsis = "Generic Glean-based LSP Server";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "glean-lsp" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."glean".components.sublibs.glass-lib or (errorHandler.buildDepError "glean:glass-lib"))
            (hsPkgs."glean".components.sublibs.if-glass-hs or (errorHandler.buildDepError "glean:if-glass-hs"))
            (hsPkgs."glean".components.sublibs.util or (errorHandler.buildDepError "glean:util"))
            (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
          ];
          buildable = true;
        };
      };
    };
  }