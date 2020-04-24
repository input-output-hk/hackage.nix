{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgrest-ws"; version = "0.3.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hasql-pool" or ((hsPkgs.pkgs-errors).buildDepError "hasql-pool"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."wai-websockets" or ((hsPkgs.pkgs-errors).buildDepError "wai-websockets"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."postgresql-libpq" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-libpq"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."lens-aeson" or ((hsPkgs.pkgs-errors).buildDepError "lens-aeson"))
          (hsPkgs."jwt" or ((hsPkgs.pkgs-errors).buildDepError "jwt"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."postgresql-libpq" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-libpq"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."jwt" or ((hsPkgs.pkgs-errors).buildDepError "jwt"))
          (hsPkgs."hasql" or ((hsPkgs.pkgs-errors).buildDepError "hasql"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      exes = {
        "postgrest-ws" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."hasql" or ((hsPkgs.pkgs-errors).buildDepError "hasql"))
            (hsPkgs."hasql-pool" or ((hsPkgs.pkgs-errors).buildDepError "hasql-pool"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."jwt" or ((hsPkgs.pkgs-errors).buildDepError "jwt"))
            (hsPkgs."postgrest-ws" or ((hsPkgs.pkgs-errors).buildDepError "postgrest-ws"))
            (hsPkgs."postgresql-libpq" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-libpq"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."wai-app-static" or ((hsPkgs.pkgs-errors).buildDepError "wai-app-static"))
            (hsPkgs."heredoc" or ((hsPkgs.pkgs-errors).buildDepError "heredoc"))
            (hsPkgs."auto-update" or ((hsPkgs.pkgs-errors).buildDepError "auto-update"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            ];
          buildable = true;
          };
        };
      tests = {
        "postgrest-ws-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."postgrest-ws" or ((hsPkgs.pkgs-errors).buildDepError "postgrest-ws"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-wai" or ((hsPkgs.pkgs-errors).buildDepError "hspec-wai"))
            (hsPkgs."hspec-wai-json" or ((hsPkgs.pkgs-errors).buildDepError "hspec-wai-json"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."hasql" or ((hsPkgs.pkgs-errors).buildDepError "hasql"))
            (hsPkgs."hasql-pool" or ((hsPkgs.pkgs-errors).buildDepError "hasql-pool"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }