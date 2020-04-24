{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "copilot"; version = "2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lee Pike <leepike@galois.com>";
      author = "Nis Nordby Wegmann, Lee Pike, Robin Morisset, Sebastian Niller, Alwyn Goodloe";
      homepage = "http://leepike.github.com/Copilot/";
      url = "";
      synopsis = "A stream DSL for writing embedded C programs.";
      description = "Documentation is available at the website, and see the included examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."copilot-core" or ((hsPkgs.pkgs-errors).buildDepError "copilot-core"))
          (hsPkgs."copilot-language" or ((hsPkgs.pkgs-errors).buildDepError "copilot-language"))
          (hsPkgs."copilot-libraries" or ((hsPkgs.pkgs-errors).buildDepError "copilot-libraries"))
          (hsPkgs."copilot-cbmc" or ((hsPkgs.pkgs-errors).buildDepError "copilot-cbmc"))
          ];
        buildable = true;
        };
      exes = {
        "copilot-regression" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."copilot-core" or ((hsPkgs.pkgs-errors).buildDepError "copilot-core"))
            (hsPkgs."copilot-language" or ((hsPkgs.pkgs-errors).buildDepError "copilot-language"))
            (hsPkgs."copilot-libraries" or ((hsPkgs.pkgs-errors).buildDepError "copilot-libraries"))
            (hsPkgs."copilot-sbv" or ((hsPkgs.pkgs-errors).buildDepError "copilot-sbv"))
            (hsPkgs."copilot-cbmc" or ((hsPkgs.pkgs-errors).buildDepError "copilot-cbmc"))
            (hsPkgs."copilot-c99" or ((hsPkgs.pkgs-errors).buildDepError "copilot-c99"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }