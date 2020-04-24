{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clif"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2016-2017 Matti Eskelinen";
      maintainer = "matti.a.eskelinen@gmail.com";
      author = "Matti Eskelinen";
      homepage = "";
      url = "";
      synopsis = "A Clifford algebra number type for Haskell";
      description = "Clif is a library for symbolic and numeric computations on Clifford algebras using Haskell. It is general enough to handle finite and infinite-dimensional Clifford algebras arising from arbitrary bilinear forms, within limitations of computability. To get started, read \"Clif.Tutorial\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs."clif" or ((hsPkgs.pkgs-errors).buildDepError "clif"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-clifProduct" = {
          depends = [
            (hsPkgs."clif" or ((hsPkgs.pkgs-errors).buildDepError "clif"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }