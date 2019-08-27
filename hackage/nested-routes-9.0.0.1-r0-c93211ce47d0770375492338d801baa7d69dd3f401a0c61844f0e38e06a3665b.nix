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
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."extractable-singleton" or (buildDepError "extractable-singleton"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."monad-control-aligned" or (buildDepError "monad-control-aligned"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."poly-arity" or (buildDepError "poly-arity"))
          (hsPkgs."pred-trie" or (buildDepError "pred-trie"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tries" or (buildDepError "tries"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-middleware-content-type" or (buildDepError "wai-middleware-content-type"))
          (hsPkgs."wai-middleware-verbs" or (buildDepError "wai-middleware-verbs"))
          (hsPkgs."wai-transformers" or (buildDepError "wai-transformers"))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."extractable-singleton" or (buildDepError "extractable-singleton"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."monad-control-aligned" or (buildDepError "monad-control-aligned"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."nested-routes" or (buildDepError "nested-routes"))
            (hsPkgs."poly-arity" or (buildDepError "poly-arity"))
            (hsPkgs."pred-trie" or (buildDepError "pred-trie"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tries" or (buildDepError "tries"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-middleware-content-type" or (buildDepError "wai-middleware-content-type"))
            (hsPkgs."wai-middleware-verbs" or (buildDepError "wai-middleware-verbs"))
            (hsPkgs."wai-transformers" or (buildDepError "wai-transformers"))
            ];
          };
        };
      };
    }