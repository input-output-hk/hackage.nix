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
    flags = { example = false; example-stm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nested-routes"; version = "4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Declarative, compositional Wai responses";
      description = "A method to writing Wai responses\n\nThis library attempts to make it easier to write nice Wai response handlers\nby giving us a Sinatra/\n<https://hackage.haskell.org/package/scotty Scotty>-like syntax for declaring HTTP-verb oriented\nroutes, in addition to file-extension handling and rose-tree like composition.\nNot only do we have literal route specification, like\n<https://hackage.haskell.org/package/scotty Scotty> &\n<https://hackage.haskell.org/package/spock Spock>, but we\ncan also embed\n<https://hackage.haskell.org/package/attoparsec Attoparsec>\nparsers and <https://hackage.haskell.org/package/regex-compat Regular Expressions>\n/directly/ in our routes, with our handlers\nreflecting their results. You can find more information in the\n<https://www.fpcomplete.com/user/AthanClark/nested-routes demo>.\nand the examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."wai-util" or (errorHandler.buildDepError "wai-util"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          (hsPkgs."composition-extra" or (errorHandler.buildDepError "composition-extra"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."pred-trie" or (errorHandler.buildDepError "pred-trie"))
          (hsPkgs."tries" or (errorHandler.buildDepError "tries"))
          (hsPkgs."poly-arity" or (errorHandler.buildDepError "poly-arity"))
          (hsPkgs."sets" or (errorHandler.buildDepError "sets"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai-util" or (errorHandler.buildDepError "wai-util"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
            (hsPkgs."composition-extra" or (errorHandler.buildDepError "composition-extra"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."pred-trie" or (errorHandler.buildDepError "pred-trie"))
            (hsPkgs."tries" or (errorHandler.buildDepError "tries"))
            (hsPkgs."poly-arity" or (errorHandler.buildDepError "poly-arity"))
            (hsPkgs."sets" or (errorHandler.buildDepError "sets"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            ];
          buildable = if flags.example then true else false;
          };
        "example-stm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai-session" or (errorHandler.buildDepError "wai-session"))
            (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
            (hsPkgs."wai-util" or (errorHandler.buildDepError "wai-util"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
            (hsPkgs."composition-extra" or (errorHandler.buildDepError "composition-extra"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."pred-trie" or (errorHandler.buildDepError "pred-trie"))
            (hsPkgs."tries" or (errorHandler.buildDepError "tries"))
            (hsPkgs."poly-arity" or (errorHandler.buildDepError "poly-arity"))
            (hsPkgs."sets" or (errorHandler.buildDepError "sets"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."iso8601-time" or (errorHandler.buildDepError "iso8601-time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            ];
          buildable = if flags.example-stm then true else false;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
            (hsPkgs."composition-extra" or (errorHandler.buildDepError "composition-extra"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."wai-util" or (errorHandler.buildDepError "wai-util"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."poly-arity" or (errorHandler.buildDepError "poly-arity"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."pred-trie" or (errorHandler.buildDepError "pred-trie"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."sets" or (errorHandler.buildDepError "sets"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            ];
          buildable = true;
          };
        };
      };
    }