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
      identifier = { name = "sparrow"; version = "0.0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Local Cooking Inc.";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "";
      url = "";
      synopsis = "Unified streaming dependency management for web apps";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/sparrow#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-attoparsec" or (errorHandler.buildDepError "aeson-attoparsec"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-uri" or (errorHandler.buildDepError "attoparsec-uri"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."extractable-singleton" or (errorHandler.buildDepError "extractable-singleton"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-control-aligned" or (errorHandler.buildDepError "monad-control-aligned"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."nested-routes" or (errorHandler.buildDepError "nested-routes"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-extra" or (errorHandler.buildDepError "path-extra"))
          (hsPkgs."pred-trie" or (errorHandler.buildDepError "pred-trie"))
          (hsPkgs."purescript-iso" or (errorHandler.buildDepError "purescript-iso"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tmapchan" or (errorHandler.buildDepError "tmapchan"))
          (hsPkgs."tmapmvar" or (errorHandler.buildDepError "tmapmvar"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."urlpath" or (errorHandler.buildDepError "urlpath"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-middleware-content-type" or (errorHandler.buildDepError "wai-middleware-content-type"))
          (hsPkgs."wai-transformers" or (errorHandler.buildDepError "wai-transformers"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."websockets-simple" or (errorHandler.buildDepError "websockets-simple"))
          (hsPkgs."wuss" or (errorHandler.buildDepError "wuss"))
          ];
        buildable = true;
        };
      };
    }