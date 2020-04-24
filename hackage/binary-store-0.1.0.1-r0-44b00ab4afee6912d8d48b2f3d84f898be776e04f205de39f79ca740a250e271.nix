{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "binary-store"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.casanueva@plowtech.net";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Format to store data using the binary transform.";
      description = "...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary-list" or ((hsPkgs.pkgs-errors).buildDepError "binary-list"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."reinterpret-cast" or ((hsPkgs.pkgs-errors).buildDepError "reinterpret-cast"))
          (hsPkgs."binary-transform" or ((hsPkgs.pkgs-errors).buildDepError "binary-transform"))
          (hsPkgs."bzlib" or ((hsPkgs.pkgs-errors).buildDepError "bzlib"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "binary-store-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."binary-list" or ((hsPkgs.pkgs-errors).buildDepError "binary-list"))
            (hsPkgs."binary-store" or ((hsPkgs.pkgs-errors).buildDepError "binary-store"))
            ];
          buildable = true;
          };
        };
      };
    }