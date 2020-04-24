{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "QuickCheckVariant"; version = "1.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) Jorge Santiago Alvarez Cuadros";
      maintainer = "sanjorgek@ciencias.unam.mx";
      author = "Jorge Santiago Alvarez Cuadros";
      homepage = "https://github.com/sanjorgek/QuickCheckVariant";
      url = "";
      synopsis = "Generator of \"valid\" and \"invalid\" data in a type class";
      description = "Generator of \"valid\" and \"invalid\" data in a type class";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "variant" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."QuickCheckVariant" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheckVariant"))
            ];
          buildable = true;
          };
        };
      };
    }