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
      identifier = { name = "postgrest-ws"; version = "0.3.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Diogo Biazus";
      maintainer = "diogo@biazus.me";
      author = "Diogo Biazus";
      homepage = "https://github.com/diogob/postgrest-ws#readme";
      url = "";
      synopsis = "PostgREST extension to map LISTEN/NOTIFY messages to Websockets";
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
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."jwt" or (buildDepError "jwt"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."jwt" or (buildDepError "jwt"))
          (hsPkgs."hasql" or (buildDepError "hasql"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."retry" or (buildDepError "retry"))
          (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
          ];
        };
      exes = {
        "postgrest-ws" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."jwt" or (buildDepError "jwt"))
            (hsPkgs."postgrest-ws" or (buildDepError "postgrest-ws"))
            (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
            (hsPkgs."heredoc" or (buildDepError "heredoc"))
            (hsPkgs."auto-update" or (buildDepError "auto-update"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            ];
          };
        };
      tests = {
        "postgrest-ws-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."postgrest-ws" or (buildDepError "postgrest-ws"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."hspec-wai-json" or (buildDepError "hspec-wai-json"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        };
      };
    }