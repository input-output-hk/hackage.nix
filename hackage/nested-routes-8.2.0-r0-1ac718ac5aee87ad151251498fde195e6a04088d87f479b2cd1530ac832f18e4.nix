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
      identifier = { name = "nested-routes"; version = "8.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "";
      homepage = "https://github.com/athanclark/nested-routes#readme";
      url = "";
      synopsis = "Declarative, compositional Wai responses";
      description = "This library attempts to make it easier to write nice Wai response handlers by giving us a Sinatra/ <https://hackage.haskell.org/package/scotty Scotty>-like syntax for declaring HTTP-verb oriented routes, in addition to file-extension handling and rose-tree like composition. Not only do we have literal route specification, like <https://hackage.haskell.org/package/scotty Scotty> & <https://hackage.haskell.org/package/spock Spock>, but we can also embed <https://hackage.haskell.org/package/attoparsec Attoparsec> parsers and <https://hackage.haskell.org/package/regex-compat Regular Expressions> /directly/ in our routes, with our handlers reflecting their results.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."extractable-singleton" or (errorHandler.buildDepError "extractable-singleton"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."monad-control-aligned" or (errorHandler.buildDepError "monad-control-aligned"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."poly-arity" or (errorHandler.buildDepError "poly-arity"))
          (hsPkgs."pred-set" or (errorHandler.buildDepError "pred-set"))
          (hsPkgs."pred-trie" or (errorHandler.buildDepError "pred-trie"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."tries" or (errorHandler.buildDepError "tries"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wai-middleware-content-type" or (errorHandler.buildDepError "wai-middleware-content-type"))
          (hsPkgs."wai-middleware-verbs" or (errorHandler.buildDepError "wai-middleware-verbs"))
          (hsPkgs."wai-transformers" or (errorHandler.buildDepError "wai-transformers"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."extractable-singleton" or (errorHandler.buildDepError "extractable-singleton"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."monad-control-aligned" or (errorHandler.buildDepError "monad-control-aligned"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."nested-routes" or (errorHandler.buildDepError "nested-routes"))
            (hsPkgs."poly-arity" or (errorHandler.buildDepError "poly-arity"))
            (hsPkgs."pred-set" or (errorHandler.buildDepError "pred-set"))
            (hsPkgs."pred-trie" or (errorHandler.buildDepError "pred-trie"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."tries" or (errorHandler.buildDepError "tries"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."wai-middleware-content-type" or (errorHandler.buildDepError "wai-middleware-content-type"))
            (hsPkgs."wai-middleware-verbs" or (errorHandler.buildDepError "wai-middleware-verbs"))
            (hsPkgs."wai-transformers" or (errorHandler.buildDepError "wai-transformers"))
          ];
          buildable = true;
        };
      };
    };
  }