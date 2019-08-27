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
    flags = { ci = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "postgrest"; version = "0.3.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "cred+github@begriffs.com";
      author = "Joe Nelson, Adam Baker";
      homepage = "https://github.com/begriffs/postgrest";
      url = "";
      synopsis = "REST API for any Postgres database";
      description = "Reads the schema of a PostgreSQL database and creates RESTful routes\nfor the tables and views, supporting all HTTP verbs that security\npermits.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."hasql" or (buildDepError "hasql"))
          (hsPkgs."hasql-transaction" or (buildDepError "hasql-transaction"))
          (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."interpolatedstring-perl6" or (buildDepError "interpolatedstring-perl6"))
          (hsPkgs."jwt" or (buildDepError "jwt"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-aeson" or (buildDepError "microlens-aeson"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."Ranged-sets" or (buildDepError "Ranged-sets"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        };
      exes = {
        "postgrest" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-tree-builder" or (buildDepError "bytestring-tree-builder"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
            (hsPkgs."hasql-transaction" or (buildDepError "hasql-transaction"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."interpolatedstring-perl6" or (buildDepError "interpolatedstring-perl6"))
            (hsPkgs."jwt" or (buildDepError "jwt"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-aeson" or (buildDepError "microlens-aeson"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
            (hsPkgs."postgrest" or (buildDepError "postgrest"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."Ranged-sets" or (buildDepError "Ranged-sets"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-string" or (buildDepError "base64-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
            (hsPkgs."hasql-transaction" or (buildDepError "hasql-transaction"))
            (hsPkgs."heredoc" or (buildDepError "heredoc"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."hspec-wai-json" or (buildDepError "hspec-wai-json"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."interpolatedstring-perl6" or (buildDepError "interpolatedstring-perl6"))
            (hsPkgs."jwt" or (buildDepError "jwt"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-aeson" or (buildDepError "microlens-aeson"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."postgrest" or (buildDepError "postgrest"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."Ranged-sets" or (buildDepError "Ranged-sets"))
            ];
          };
        };
      };
    }