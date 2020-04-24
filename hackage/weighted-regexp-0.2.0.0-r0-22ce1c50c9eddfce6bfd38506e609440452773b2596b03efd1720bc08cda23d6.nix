{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { quickcheck = false; criterion = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "weighted-regexp"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastian Fischer";
      author = "Thomas Wilke, Frank Huch, Sebastian Fischer";
      homepage = "http://sebfisch.github.com/haskell-regexp";
      url = "";
      synopsis = "Weighted Regular Expression Matcher";
      description = "Haskell implementation of a weighted regular expression\nmatcher with linear worst-case time and space bounds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
          ];
        buildable = true;
        };
      exes = {
        "quickcheck-re" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = if !flags.quickcheck then false else true;
          };
        "criterion-re" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = if !flags.criterion then false else true;
          };
        };
      };
    }