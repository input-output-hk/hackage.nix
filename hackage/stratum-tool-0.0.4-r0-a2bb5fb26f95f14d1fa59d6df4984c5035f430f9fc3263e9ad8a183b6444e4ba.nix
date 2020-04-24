{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ssl = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "stratum-tool"; version = "0.0.4"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "joel.lehtonen@koodilehto.fi";
      author = "Joel Lehtonen";
      homepage = "";
      url = "";
      synopsis = "Client for Stratum protocol";
      description = "Connects to Electrum server via Stratum protocol and\nallows querying bitcoin wallet balances and other commands\nsupported by the server. It supports the original JSON format\nin addition to shell script friendly JSON breadcrumbs format.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "stratum-tool" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."curl-aeson" or ((hsPkgs.pkgs-errors).buildDepError "curl-aeson"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
            (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optional (flags.ssl) (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"));
          buildable = true;
          };
        };
      };
    }