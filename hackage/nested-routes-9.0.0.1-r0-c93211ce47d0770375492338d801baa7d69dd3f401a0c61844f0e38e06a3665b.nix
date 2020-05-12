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
      identifier = { name = "nested-routes"; version = "9.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "";
      homepage = "https://github.com/athanclark/nested-routes#readme";
      url = "";
      synopsis = "Declarative, compositional Wai responses";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/pred-trie#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."extractable-singleton" or (errorHandler.buildDepError "extractable-singleton"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."monad-control-aligned" or (errorHandler.buildDepError "monad-control-aligned"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."poly-arity" or (errorHandler.buildDepError "poly-arity"))
          (hsPkgs."pred-trie" or (errorHandler.buildDepError "pred-trie"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tries" or (errorHandler.buildDepError "tries"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
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
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."extractable-singleton" or (errorHandler.buildDepError "extractable-singleton"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."monad-control-aligned" or (errorHandler.buildDepError "monad-control-aligned"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."nested-routes" or (errorHandler.buildDepError "nested-routes"))
            (hsPkgs."poly-arity" or (errorHandler.buildDepError "poly-arity"))
            (hsPkgs."pred-trie" or (errorHandler.buildDepError "pred-trie"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tries" or (errorHandler.buildDepError "tries"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-middleware-content-type" or (errorHandler.buildDepError "wai-middleware-content-type"))
            (hsPkgs."wai-middleware-verbs" or (errorHandler.buildDepError "wai-middleware-verbs"))
            (hsPkgs."wai-transformers" or (errorHandler.buildDepError "wai-transformers"))
            ];
          buildable = true;
          };
        };
      };
    }