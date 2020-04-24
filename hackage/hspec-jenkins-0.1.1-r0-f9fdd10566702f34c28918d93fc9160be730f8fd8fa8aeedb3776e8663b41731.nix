{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hspec-jenkins"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "eagletmt@gmail.com";
      author = "Kohei Suzuki";
      homepage = "https://github.com/worksap-ate/hspec-jenkins";
      url = "";
      synopsis = "Jenkins-friendly XML formatter for Hspec";
      description = "Jenkins-friendly XML formatter for Hspec";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          ];
        buildable = true;
        };
      };
    }