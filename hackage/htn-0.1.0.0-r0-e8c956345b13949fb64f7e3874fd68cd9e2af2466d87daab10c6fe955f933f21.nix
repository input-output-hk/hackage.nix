{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "htn"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Yuji Kamiya";
      maintainer = "y.kamiya0@gmail.com";
      author = "Yuji Kamiya";
      homepage = "https://github.com/y-kamiya/htn-haskell#readme";
      url = "";
      synopsis = "resolver using htn algorithm";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."htn" or ((hsPkgs.pkgs-errors).buildDepError "htn"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }