{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { colors = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty"; version = "0.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "";
      url = "";
      synopsis = "Modern and extensible testing framework";
      description = "See <http://documentup.com/feuerbach/tasty>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          ] ++ (pkgs.lib).optional (flags.colors) (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"));
        buildable = true;
        };
      };
    }