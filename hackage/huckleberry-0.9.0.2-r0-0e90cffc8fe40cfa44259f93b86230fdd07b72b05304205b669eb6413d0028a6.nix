{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "huckleberry"; version = "0.9.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tkms@mitsuji.org";
      author = "Takamasa Mitsuji";
      homepage = "";
      url = "";
      synopsis = "IchigoJam BASIC expressed in Haskell.";
      description = "The EDSL Provides bridge between IchigoJam BASIC and Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."serialport" or ((hsPkgs.pkgs-errors).buildDepError "serialport"))
          ];
        buildable = true;
        };
      tests = {
        "huckleberry-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."huckleberry" or ((hsPkgs.pkgs-errors).buildDepError "huckleberry"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }