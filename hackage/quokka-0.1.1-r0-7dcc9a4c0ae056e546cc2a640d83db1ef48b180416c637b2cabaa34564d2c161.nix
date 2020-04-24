{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quokka"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "shirren.premaratne@gmail.com";
      author = "Shirren Premaratne";
      homepage = "https://github.com/paidright/quokka";
      url = "";
      synopsis = "Test helpers which help generate data for projects that use postgresql.";
      description = "Quokka is a library that helps generate test data for projects that use postgresql. The\ngenerated test data is inserted into Postgres for access by libraries such as Beam, Traction\nand postgresql-simple etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."regex-pcre-builtin" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre-builtin"))
          (hsPkgs."pcre-utils" or ((hsPkgs.pkgs-errors).buildDepError "pcre-utils"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "quokka-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
            (hsPkgs."quokka" or ((hsPkgs.pkgs-errors).buildDepError "quokka"))
            (hsPkgs."raw-strings-qq" or ((hsPkgs.pkgs-errors).buildDepError "raw-strings-qq"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }