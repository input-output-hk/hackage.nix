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
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."extractable-singleton" or (buildDepError "extractable-singleton"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."monad-control-aligned" or (buildDepError "monad-control-aligned"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."poly-arity" or (buildDepError "poly-arity"))
          (hsPkgs."pred-set" or (buildDepError "pred-set"))
          (hsPkgs."pred-trie" or (buildDepError "pred-trie"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."tries" or (buildDepError "tries"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."wai-middleware-content-type" or (buildDepError "wai-middleware-content-type"))
          (hsPkgs."wai-middleware-verbs" or (buildDepError "wai-middleware-verbs"))
          (hsPkgs."wai-transformers" or (buildDepError "wai-transformers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."HSet" or (buildDepError "HSet"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."composition-extra" or (buildDepError "composition-extra"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."extractable-singleton" or (buildDepError "extractable-singleton"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hashtables" or (buildDepError "hashtables"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."monad-control-aligned" or (buildDepError "monad-control-aligned"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."poly-arity" or (buildDepError "poly-arity"))
            (hsPkgs."pred-set" or (buildDepError "pred-set"))
            (hsPkgs."pred-trie" or (buildDepError "pred-trie"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."tries" or (buildDepError "tries"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."wai-middleware-content-type" or (buildDepError "wai-middleware-content-type"))
            (hsPkgs."wai-middleware-verbs" or (buildDepError "wai-middleware-verbs"))
            (hsPkgs."wai-transformers" or (buildDepError "wai-transformers"))
            ];
          buildable = true;
          };
        };
      };
    }