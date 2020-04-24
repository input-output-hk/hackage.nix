{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ListWriter"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2010 Yu Li";
      maintainer = "ylilarry@gmail.com";
      author = "Yu Li";
      homepage = "https://github.com/YLiLarry/ListWriter";
      url = "";
      synopsis = "define a list constant using Monadic syntax other than overhead [,]";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "ListWriter-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ListWriter" or ((hsPkgs.pkgs-errors).buildDepError "ListWriter"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }