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
      specVersion = "1.8";
      identifier = { name = "haskell-neo4j-client"; version = "0.3.1.3"; };
      license = "MIT";
      copyright = "(c) 2014 Antoni Silvestre";
      maintainer = "antoni.silvestre@gmail.com";
      author = "Antoni Silvestre";
      homepage = "https://github.com/asilvestre/haskell-neo4j-rest-client";
      url = "";
      synopsis = "A Haskell neo4j client";
      description = "Library to interact with Neo4j databases.\n\nThis library covers:\n\n-Cypher transactions\n\n-CRUD operations for nodes, relationships, labels and indexes\n\n-Batch calls for CRUD operations.\n\n-Traversal API\n\nAll code has been tested with Neo4j versions 2.0.3, 2.1.5, 2.1.7, 2.2.0 and 2.2.1\n\n2.2.0 added authentication to the API this driver uses, this is not supported yet by this driver but it will be soon.\nIn the meantime you will have to disable it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          ];
        };
      tests = {
        "test-haskell-neo4j-rest-client" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            ];
          };
        };
      };
    }