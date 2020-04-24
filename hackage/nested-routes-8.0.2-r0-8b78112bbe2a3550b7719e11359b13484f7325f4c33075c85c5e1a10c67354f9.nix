{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nested-routes"; version = "8.0.2"; };
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
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."extractable-singleton" or ((hsPkgs.pkgs-errors).buildDepError "extractable-singleton"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
          (hsPkgs."monad-control-aligned" or ((hsPkgs.pkgs-errors).buildDepError "monad-control-aligned"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."poly-arity" or ((hsPkgs.pkgs-errors).buildDepError "poly-arity"))
          (hsPkgs."pred-set" or ((hsPkgs.pkgs-errors).buildDepError "pred-set"))
          (hsPkgs."pred-trie" or ((hsPkgs.pkgs-errors).buildDepError "pred-trie"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."tries" or ((hsPkgs.pkgs-errors).buildDepError "tries"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."wai-middleware-content-type" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-content-type"))
          (hsPkgs."wai-middleware-verbs" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-verbs"))
          (hsPkgs."wai-transformers" or ((hsPkgs.pkgs-errors).buildDepError "wai-transformers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."HSet" or ((hsPkgs.pkgs-errors).buildDepError "HSet"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."composition-extra" or ((hsPkgs.pkgs-errors).buildDepError "composition-extra"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."extractable-singleton" or ((hsPkgs.pkgs-errors).buildDepError "extractable-singleton"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-wai" or ((hsPkgs.pkgs-errors).buildDepError "hspec-wai"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."monad-control-aligned" or ((hsPkgs.pkgs-errors).buildDepError "monad-control-aligned"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."poly-arity" or ((hsPkgs.pkgs-errors).buildDepError "poly-arity"))
            (hsPkgs."pred-set" or ((hsPkgs.pkgs-errors).buildDepError "pred-set"))
            (hsPkgs."pred-trie" or ((hsPkgs.pkgs-errors).buildDepError "pred-trie"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."tries" or ((hsPkgs.pkgs-errors).buildDepError "tries"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."wai-middleware-content-type" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-content-type"))
            (hsPkgs."wai-middleware-verbs" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-verbs"))
            (hsPkgs."wai-transformers" or ((hsPkgs.pkgs-errors).buildDepError "wai-transformers"))
            ];
          buildable = true;
          };
        };
      };
    }