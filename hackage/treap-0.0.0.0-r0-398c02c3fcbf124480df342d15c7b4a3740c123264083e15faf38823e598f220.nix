{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "treap"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 Dmitrii Kovanikov";
      maintainer = "kovanikov@gmail.com";
      author = "Dmitrii Kovanikov";
      homepage = "https://github.com/chshersh/treap";
      url = "";
      synopsis = "Efficient implementation of the implicit treap data structure";
      description = "Efficient implementation of the implicit treap data structure.\nUse this data structure if you want dynamic arrays with fast operations on segments.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
          ];
        buildable = true;
        };
      tests = {
        "treap-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."treap" or ((hsPkgs.pkgs-errors).buildDepError "treap"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            ];
          buildable = true;
          };
        "treap-doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            ];
          buildable = true;
          };
        };
      };
    }