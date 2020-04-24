{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; util = true; yaml = true; regex = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ert"; version = "0.0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "kayo@illumium.org";
      author = "K.";
      homepage = "";
      url = "";
      synopsis = "Easy Runtime Templates";
      description = "EJS-like template engine for Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."attoparsec-expr" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-expr"))
          ] ++ (pkgs.lib).optional (flags.regex) (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"));
        buildable = true;
        };
      exes = {
        "ert" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ert" or ((hsPkgs.pkgs-errors).buildDepError "ert"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."attoparsec-expr" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-expr"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            ] ++ (pkgs.lib).optional (flags.regex) (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))) ++ (pkgs.lib).optional (flags.yaml) (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"));
          buildable = true;
          };
        };
      };
    }