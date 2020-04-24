{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "remark"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Oleks";
      maintainer = "oleks@oleks.info";
      author = "Oleks";
      homepage = "https://github.com/oleks/remark#readme";
      url = "";
      synopsis = "A DSL for marking student work";
      description = "Please see README.org";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."GenericPretty" or ((hsPkgs.pkgs-errors).buildDepError "GenericPretty"))
          ];
        buildable = true;
        };
      exes = {
        "remark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."remark" or ((hsPkgs.pkgs-errors).buildDepError "remark"))
            (hsPkgs."GenericPretty" or ((hsPkgs.pkgs-errors).buildDepError "GenericPretty"))
            ];
          buildable = true;
          };
        };
      tests = {
        "remark-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."remark" or ((hsPkgs.pkgs-errors).buildDepError "remark"))
            (hsPkgs."GenericPretty" or ((hsPkgs.pkgs-errors).buildDepError "GenericPretty"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            ];
          buildable = true;
          };
        };
      };
    }