{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sqlite = true; postgresql = false; mysql = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "groundhog-inspector"; version = "0.8.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "http://github.com/lykahb/groundhog";
      url = "";
      synopsis = "Type-safe datatype-database mapping library.";
      description = "This library analyzes database tables and creates corresponding datatypes and their mappings for Groundhog <https://www.fpcomplete.com/user/lykahb/groundhog>. See examples at <https://github.com/lykahb/groundhog/tree/master/groundhog-inspector/examples>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."groundhog" or ((hsPkgs.pkgs-errors).buildDepError "groundhog"))
          (hsPkgs."groundhog-th" or ((hsPkgs.pkgs-errors).buildDepError "groundhog-th"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          ];
        buildable = true;
        };
      exes = {
        "groundhog_inspector" = {
          depends = (([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."groundhog" or ((hsPkgs.pkgs-errors).buildDepError "groundhog"))
            (hsPkgs."groundhog-th" or ((hsPkgs.pkgs-errors).buildDepError "groundhog-th"))
            (hsPkgs."groundhog-inspector" or ((hsPkgs.pkgs-errors).buildDepError "groundhog-inspector"))
            ] ++ (pkgs.lib).optional (flags.sqlite) (hsPkgs."groundhog-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "groundhog-sqlite"))) ++ (pkgs.lib).optional (flags.postgresql) (hsPkgs."groundhog-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "groundhog-postgresql"))) ++ (pkgs.lib).optional (flags.mysql) (hsPkgs."groundhog-mysql" or ((hsPkgs.pkgs-errors).buildDepError "groundhog-mysql"));
          buildable = true;
          };
        };
      };
    }