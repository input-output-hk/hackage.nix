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
      identifier = { name = "streaming-utils"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming-utils";
      url = "";
      synopsis = "http, attoparsec and pipes utilities for streaming and streaming-bytestring";
      description = "Experimental http-client, attoparsec and pipes utilities for use with\nthe <http://hackage.haskell.org/package/streaming streaming> and\n<http://hackage.haskell.org/package/streaming-bytestring streaming bytestring> libraries.\nOther modules are planned.\n\nThis package of course heaps together a number of dependencies.\nPlease raise an issue if this is a problem.\n\nQuestions about usage can be raised as issues, or addressed to the\n<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."json-stream" or (errorHandler.buildDepError "json-stream"))
          ];
        buildable = true;
        };
      };
    }