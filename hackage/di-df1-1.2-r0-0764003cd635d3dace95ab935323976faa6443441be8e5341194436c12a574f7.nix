{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "di-df1"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "Write logs in the df1 format using the di logging framework";
      description = "Write logs in the df1 format using the di logging framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."df1" or ((hsPkgs.pkgs-errors).buildDepError "df1"))
          (hsPkgs."di-core" or ((hsPkgs.pkgs-errors).buildDepError "di-core"))
          (hsPkgs."di-monad" or ((hsPkgs.pkgs-errors).buildDepError "di-monad"))
          (hsPkgs."di-handle" or ((hsPkgs.pkgs-errors).buildDepError "di-handle"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."df1" or ((hsPkgs.pkgs-errors).buildDepError "df1"))
            (hsPkgs."di-core" or ((hsPkgs.pkgs-errors).buildDepError "di-core"))
            (hsPkgs."di-df1" or ((hsPkgs.pkgs-errors).buildDepError "di-df1"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }