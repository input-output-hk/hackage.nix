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
      specVersion = "1.6";
      identifier = { name = "VKHS"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, Sergey Mironov";
      maintainer = "ierton@gmail.com";
      author = "Sergey Mironov";
      homepage = "http://github.com/ierton/vkhs";
      url = "";
      synopsis = "Provides access to Vkontakte social network via public API";
      description = "Provides access to Vkontakte API methods. Library requires no interaction\nwith the user during Implicit-flow authentication.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tagsoup-parsec" or (errorHandler.buildDepError "tagsoup-parsec"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."curlhs" or (errorHandler.buildDepError "curlhs"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = { "vkq" = { buildable = true; }; };
      };
    }