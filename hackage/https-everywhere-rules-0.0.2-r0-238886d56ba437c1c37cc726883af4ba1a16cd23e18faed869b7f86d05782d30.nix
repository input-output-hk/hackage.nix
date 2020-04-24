{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "https-everywhere-rules"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "vi@zalora.com";
      author = "vi";
      homepage = "https://github.com/fmap/https-everywhere-rules";
      url = "";
      synopsis = "High-level access to HTTPS Everywhere rulesets.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."functor-infix" or ((hsPkgs.pkgs-errors).buildDepError "functor-infix"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
          (hsPkgs."taggy-lens" or ((hsPkgs.pkgs-errors).buildDepError "taggy-lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-icu" or ((hsPkgs.pkgs-errors).buildDepError "text-icu"))
          (hsPkgs."https-everywhere-rules-raw" or ((hsPkgs.pkgs-errors).buildDepError "https-everywhere-rules-raw"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."functor-infix" or ((hsPkgs.pkgs-errors).buildDepError "functor-infix"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
            (hsPkgs."taggy-lens" or ((hsPkgs.pkgs-errors).buildDepError "taggy-lens"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-icu" or ((hsPkgs.pkgs-errors).buildDepError "text-icu"))
            (hsPkgs."https-everywhere-rules-raw" or ((hsPkgs.pkgs-errors).buildDepError "https-everywhere-rules-raw"))
            ];
          buildable = true;
          };
        };
      };
    }