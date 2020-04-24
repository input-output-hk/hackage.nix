{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "copilot-cbmc"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leepike@galois.com";
      author = "Lee Pike\n, Sebastian Niller\n, Nis Nordby Wegmann";
      homepage = "";
      url = "";
      synopsis = "Copilot interface to a C model-checker.";
      description = "Depends on CBMC <http://www.cprover.org/cbmc/>.  Generates a driver to prove the Atom and SBV backends generate equivalent code.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."copilot-core" or ((hsPkgs.pkgs-errors).buildDepError "copilot-core"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."copilot-sbv" or ((hsPkgs.pkgs-errors).buildDepError "copilot-sbv"))
          (hsPkgs."copilot-c99" or ((hsPkgs.pkgs-errors).buildDepError "copilot-c99"))
          ];
        buildable = true;
        };
      };
    }