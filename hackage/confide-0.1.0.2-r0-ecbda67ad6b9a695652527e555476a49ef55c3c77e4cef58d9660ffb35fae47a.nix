{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "confide"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Alex Milkov";
      maintainer = "amilkov3@gmail.com";
      author = "Alex Milkov";
      homepage = "https://github.com/amilkov3/confide";
      url = "";
      synopsis = "derive typeclass instances for decoding types from HOCON conf";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deiko-config" or ((hsPkgs.pkgs-errors).buildDepError "deiko-config"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "confide-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."confide" or ((hsPkgs.pkgs-errors).buildDepError "confide"))
            (hsPkgs."deiko-config" or ((hsPkgs.pkgs-errors).buildDepError "deiko-config"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }