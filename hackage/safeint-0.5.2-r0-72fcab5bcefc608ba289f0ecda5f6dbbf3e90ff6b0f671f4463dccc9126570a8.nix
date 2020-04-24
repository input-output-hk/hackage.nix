{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "safeint"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Well-Typed LLP";
      maintainer = "Andres Loeh <andres@well-typed.com>";
      author = "Andres Loeh";
      homepage = "";
      url = "";
      synopsis = "overflow-checked Int type";
      description = "Defines a variant of Haskell's Int type that is overflow-checked. If\nan overflow or arithmetic error occurs, a run-time exception is thrown.\n\nCurrently still in an experimental stage. Everything can change.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "TestSafeInt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."safeint" or ((hsPkgs.pkgs-errors).buildDepError "safeint"))
            ];
          buildable = true;
          };
        };
      };
    }