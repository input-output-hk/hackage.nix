{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "secd"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD-3-Clause";
      maintainer = "kwangyul.seo@gmail.com";
      author = "Kwang Yul Seo";
      homepage = "http://github.com/kseo/secd#readme";
      url = "";
      synopsis = "A Haskell implementation of the SECD abstract machine";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "secdi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."secd" or ((hsPkgs.pkgs-errors).buildDepError "secd"))
            ];
          buildable = true;
          };
        };
      tests = {
        "secd-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."secd" or ((hsPkgs.pkgs-errors).buildDepError "secd"))
            ];
          buildable = true;
          };
        };
      };
    }