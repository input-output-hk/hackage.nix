{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "state-plus"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Boris Sukholitko, 2017";
      maintainer = "boriss@gmail.com";
      author = "Boris Sukholitko";
      homepage = "";
      url = "";
      synopsis = "MonadPlus for StateT";
      description = "Implements MonadPlus with left catch (MonadOr) for StateT.";
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
        "Main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."state-plus" or ((hsPkgs.pkgs-errors).buildDepError "state-plus"))
            (hsPkgs."checkers" or ((hsPkgs.pkgs-errors).buildDepError "checkers"))
            ];
          buildable = true;
          };
        };
      };
    }