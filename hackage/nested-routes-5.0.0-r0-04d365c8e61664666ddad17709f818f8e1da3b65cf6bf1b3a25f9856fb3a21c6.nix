{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; example-stm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nested-routes"; version = "5.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."composition-extra" or ((hsPkgs.pkgs-errors).buildDepError "composition-extra"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."poly-arity" or ((hsPkgs.pkgs-errors).buildDepError "poly-arity"))
          (hsPkgs."pred-trie" or ((hsPkgs.pkgs-errors).buildDepError "pred-trie"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."tries" or ((hsPkgs.pkgs-errors).buildDepError "tries"))
          (hsPkgs."wai-transformers" or ((hsPkgs.pkgs-errors).buildDepError "wai-transformers"))
          (hsPkgs."wai-middleware-content-type" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-content-type"))
          (hsPkgs."wai-middleware-verbs" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-verbs"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."nested-routes" or ((hsPkgs.pkgs-errors).buildDepError "nested-routes"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."composition-extra" or ((hsPkgs.pkgs-errors).buildDepError "composition-extra"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."poly-arity" or ((hsPkgs.pkgs-errors).buildDepError "poly-arity"))
            (hsPkgs."pred-trie" or ((hsPkgs.pkgs-errors).buildDepError "pred-trie"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."tries" or ((hsPkgs.pkgs-errors).buildDepError "tries"))
            (hsPkgs."wai-transformers" or ((hsPkgs.pkgs-errors).buildDepError "wai-transformers"))
            (hsPkgs."wai-middleware-content-type" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-content-type"))
            (hsPkgs."wai-middleware-verbs" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-verbs"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = if flags.example then true else false;
          };
        "example-stm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."nested-routes" or ((hsPkgs.pkgs-errors).buildDepError "nested-routes"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."composition-extra" or ((hsPkgs.pkgs-errors).buildDepError "composition-extra"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cookie" or ((hsPkgs.pkgs-errors).buildDepError "cookie"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."iso8601-time" or ((hsPkgs.pkgs-errors).buildDepError "iso8601-time"))
            (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."poly-arity" or ((hsPkgs.pkgs-errors).buildDepError "poly-arity"))
            (hsPkgs."pred-trie" or ((hsPkgs.pkgs-errors).buildDepError "pred-trie"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."tries" or ((hsPkgs.pkgs-errors).buildDepError "tries"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-content-type" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-content-type"))
            (hsPkgs."wai-middleware-verbs" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-verbs"))
            (hsPkgs."wai-transformers" or ((hsPkgs.pkgs-errors).buildDepError "wai-transformers"))
            (hsPkgs."wai-session" or ((hsPkgs.pkgs-errors).buildDepError "wai-session"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = if flags.example-stm then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."nested-routes" or ((hsPkgs.pkgs-errors).buildDepError "nested-routes"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."composition-extra" or ((hsPkgs.pkgs-errors).buildDepError "composition-extra"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."poly-arity" or ((hsPkgs.pkgs-errors).buildDepError "poly-arity"))
            (hsPkgs."pred-trie" or ((hsPkgs.pkgs-errors).buildDepError "pred-trie"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."tries" or ((hsPkgs.pkgs-errors).buildDepError "tries"))
            (hsPkgs."wai-transformers" or ((hsPkgs.pkgs-errors).buildDepError "wai-transformers"))
            (hsPkgs."wai-middleware-content-type" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-content-type"))
            (hsPkgs."wai-middleware-verbs" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-verbs"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-wai" or ((hsPkgs.pkgs-errors).buildDepError "hspec-wai"))
            ];
          buildable = true;
          };
        };
      };
    }