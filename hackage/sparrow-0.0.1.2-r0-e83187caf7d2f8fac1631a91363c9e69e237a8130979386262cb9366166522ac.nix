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
      identifier = { name = "sparrow"; version = "0.0.1.2"; };
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
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-attoparsec" or (buildDepError "aeson-attoparsec"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."attoparsec-uri" or (buildDepError "attoparsec-uri"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."extractable-singleton" or (buildDepError "extractable-singleton"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."list-t" or (buildDepError "list-t"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."monad-control-aligned" or (buildDepError "monad-control-aligned"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."nested-routes" or (buildDepError "nested-routes"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."path-extra" or (buildDepError "path-extra"))
          (hsPkgs."pred-trie" or (buildDepError "pred-trie"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tmapchan" or (buildDepError "tmapchan"))
          (hsPkgs."tmapmvar" or (buildDepError "tmapmvar"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."urlpath" or (buildDepError "urlpath"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-middleware-content-type" or (buildDepError "wai-middleware-content-type"))
          (hsPkgs."wai-transformers" or (buildDepError "wai-transformers"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."websockets-simple" or (buildDepError "websockets-simple"))
          (hsPkgs."wuss" or (buildDepError "wuss"))
          ];
        };
      };
    }