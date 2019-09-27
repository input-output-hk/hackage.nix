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
      identifier = { name = "postgrest"; version = "0.2.10.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hasql" or (buildDepError "hasql"))
          (hsPkgs."hasql-backend" or (buildDepError "hasql-backend"))
          (hsPkgs."hasql-postgres" or (buildDepError "hasql-postgres"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
          (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or (buildDepError "regex-tdfa-text"))
          (hsPkgs."Ranged-sets" or (buildDepError "Ranged-sets"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."bcrypt" or (buildDepError "bcrypt"))
          (hsPkgs."base64-string" or (buildDepError "base64-string"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."jwt" or (buildDepError "jwt"))
          ];
        buildable = true;
        };
      exes = {
        "postgrest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."postgrest" or (buildDepError "postgrest"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-backend" or (buildDepError "hasql-backend"))
            (hsPkgs."hasql-postgres" or (buildDepError "hasql-postgres"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
            (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."regex-tdfa-text" or (buildDepError "regex-tdfa-text"))
            (hsPkgs."Ranged-sets" or (buildDepError "Ranged-sets"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."bcrypt" or (buildDepError "bcrypt"))
            (hsPkgs."base64-string" or (buildDepError "base64-string"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."jwt" or (buildDepError "jwt"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."hspec-wai-json" or (buildDepError "hspec-wai-json"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-backend" or (buildDepError "hasql-backend"))
            (hsPkgs."hasql-postgres" or (buildDepError "hasql-postgres"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."packdeps" or (buildDepError "packdeps"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."http-media" or (buildDepError "http-media"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."regex-tdfa-text" or (buildDepError "regex-tdfa-text"))
            (hsPkgs."Ranged-sets" or (buildDepError "Ranged-sets"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."bcrypt" or (buildDepError "bcrypt"))
            (hsPkgs."base64-string" or (buildDepError "base64-string"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."heredoc" or (buildDepError "heredoc"))
            (hsPkgs."jwt" or (buildDepError "jwt"))
            ];
          buildable = true;
          };
        };
      };
    }