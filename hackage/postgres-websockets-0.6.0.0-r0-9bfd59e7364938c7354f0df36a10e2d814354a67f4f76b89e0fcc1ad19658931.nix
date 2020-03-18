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
      identifier = { name = "postgres-websockets"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Diogo Biazus";
      maintainer = "diogo@biazus.ca";
      author = "Diogo Biazus";
      homepage = "https://github.com/diogob/postgres-websockets#readme";
      url = "";
      synopsis = "Middleware to map LISTEN/NOTIFY messages to Websockets";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."jose" or (buildDepError "jose"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."hasql" or (buildDepError "hasql"))
          (hsPkgs."hasql-notifications" or (buildDepError "hasql-notifications"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."retry" or (buildDepError "retry"))
          (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          ];
        buildable = true;
        };
      exes = {
        "postgres-websockets" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."postgres-websockets" or (buildDepError "postgres-websockets"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
            (hsPkgs."envparse" or (buildDepError "envparse"))
            ];
          buildable = true;
          };
        };
      tests = {
        "postgres-websockets-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."postgres-websockets" or (buildDepError "postgres-websockets"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."hspec-wai-json" or (buildDepError "hspec-wai-json"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
            (hsPkgs."hasql-notifications" or (buildDepError "hasql-notifications"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }