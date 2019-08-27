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
      identifier = { name = "solr"; version = "0.4.2"; };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/solr";
      url = "";
      synopsis = "A minimal Solr client library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."managed" or (buildDepError "managed"))
          (hsPkgs."optparse-applicative-simple" or (buildDepError "optparse-applicative-simple"))
          (hsPkgs."attoparsec-data" or (buildDepError "attoparsec-data"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-response-decoder" or (buildDepError "http-response-decoder"))
          (hsPkgs."uri-encode" or (buildDepError "uri-encode"))
          (hsPkgs."json-encoder" or (buildDepError "json-encoder"))
          (hsPkgs."json-incremental-decoder" or (buildDepError "json-incremental-decoder"))
          (hsPkgs."bytestring-tree-builder" or (buildDepError "bytestring-tree-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."matcher" or (buildDepError "matcher"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      };
    }