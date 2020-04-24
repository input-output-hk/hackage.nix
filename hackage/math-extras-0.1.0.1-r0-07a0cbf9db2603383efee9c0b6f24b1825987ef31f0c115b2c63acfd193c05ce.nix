{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "math-extras"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Ziyang Liu";
      maintainer = "Ziyang Liu <free@cofree.io>";
      author = "Ziyang Liu <free@cofree.io>";
      homepage = "https://github.com/zliu41/math-extras";
      url = "";
      synopsis = "A variety of mathematical utilities";
      description = "A variety of mathematical utilities not covered in base.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "hedgehog" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."math-extras" or ((hsPkgs.pkgs-errors).buildDepError "math-extras"))
            ];
          buildable = true;
          };
        };
      };
    }