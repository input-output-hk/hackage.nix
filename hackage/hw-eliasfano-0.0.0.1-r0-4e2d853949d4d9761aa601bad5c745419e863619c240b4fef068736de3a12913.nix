{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "hw-eliasfano"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-eliasfano#readme";
      url = "";
      synopsis = "Conduits for tokenizing streams.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
          (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "hw-eliasfano-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
            (hsPkgs."hw-eliasfano" or ((hsPkgs.pkgs-errors).buildDepError "hw-eliasfano"))
            (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }