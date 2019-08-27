let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; example-stm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nested-routes"; version = "6.1.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."composition-extra" or (buildDepError "composition-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."poly-arity" or (buildDepError "poly-arity"))
          (hsPkgs."pred-trie" or (buildDepError "pred-trie"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."tries" or (buildDepError "tries"))
          (hsPkgs."wai-transformers" or (buildDepError "wai-transformers"))
          (hsPkgs."wai-middleware-content-type" or (buildDepError "wai-middleware-content-type"))
          (hsPkgs."wai-middleware-verbs" or (buildDepError "wai-middleware-verbs"))
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."nested-routes" or (buildDepError "nested-routes"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."composition-extra" or (buildDepError "composition-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."poly-arity" or (buildDepError "poly-arity"))
            (hsPkgs."pred-trie" or (buildDepError "pred-trie"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."tries" or (buildDepError "tries"))
            (hsPkgs."wai-transformers" or (buildDepError "wai-transformers"))
            (hsPkgs."wai-middleware-content-type" or (buildDepError "wai-middleware-content-type"))
            (hsPkgs."wai-middleware-verbs" or (buildDepError "wai-middleware-verbs"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        "example-stm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."nested-routes" or (buildDepError "nested-routes"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."composition-extra" or (buildDepError "composition-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cookie" or (buildDepError "cookie"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."iso8601-time" or (buildDepError "iso8601-time"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."poly-arity" or (buildDepError "poly-arity"))
            (hsPkgs."pred-trie" or (buildDepError "pred-trie"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."tries" or (buildDepError "tries"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-content-type" or (buildDepError "wai-middleware-content-type"))
            (hsPkgs."wai-middleware-verbs" or (buildDepError "wai-middleware-verbs"))
            (hsPkgs."wai-transformers" or (buildDepError "wai-transformers"))
            (hsPkgs."wai-session" or (buildDepError "wai-session"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."nested-routes" or (buildDepError "nested-routes"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."composition-extra" or (buildDepError "composition-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."poly-arity" or (buildDepError "poly-arity"))
            (hsPkgs."pred-trie" or (buildDepError "pred-trie"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."tries" or (buildDepError "tries"))
            (hsPkgs."wai-transformers" or (buildDepError "wai-transformers"))
            (hsPkgs."wai-middleware-content-type" or (buildDepError "wai-middleware-content-type"))
            (hsPkgs."wai-middleware-verbs" or (buildDepError "wai-middleware-verbs"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            ];
          };
        };
      };
    }