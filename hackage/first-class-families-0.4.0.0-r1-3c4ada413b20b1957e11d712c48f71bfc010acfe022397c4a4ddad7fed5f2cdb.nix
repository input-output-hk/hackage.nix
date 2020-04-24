{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "first-class-families"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "2018 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/first-class-families#readme";
      url = "";
      synopsis = "First class type families";
      description = "First class type families,\neval-style defunctionalization\n\nSee \"Fcf\".";
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
        "fcf-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."first-class-families" or ((hsPkgs.pkgs-errors).buildDepError "first-class-families"))
            ];
          buildable = true;
          };
        };
      };
    }