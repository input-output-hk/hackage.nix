{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "gdiff-th"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Generate gdiff GADTs and Instances.";
      description = "Generate gdiff GADTs and Instances. Very Alpha. Does not yet support GADTs among other this I'm sure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."specialize-th" or ((hsPkgs.pkgs-errors).buildDepError "specialize-th"))
          (hsPkgs."universe-th" or ((hsPkgs.pkgs-errors).buildDepError "universe-th"))
          (hsPkgs."type-sub-th" or ((hsPkgs.pkgs-errors).buildDepError "type-sub-th"))
          (hsPkgs."gdiff" or ((hsPkgs.pkgs-errors).buildDepError "gdiff"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."DebugTraceHelpers" or ((hsPkgs.pkgs-errors).buildDepError "DebugTraceHelpers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            (hsPkgs."checkers" or ((hsPkgs.pkgs-errors).buildDepError "checkers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."th-instances" or ((hsPkgs.pkgs-errors).buildDepError "th-instances"))
            (hsPkgs."specialize-th" or ((hsPkgs.pkgs-errors).buildDepError "specialize-th"))
            (hsPkgs."universe-th" or ((hsPkgs.pkgs-errors).buildDepError "universe-th"))
            (hsPkgs."type-sub-th" or ((hsPkgs.pkgs-errors).buildDepError "type-sub-th"))
            (hsPkgs."gdiff" or ((hsPkgs.pkgs-errors).buildDepError "gdiff"))
            (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
            ];
          buildable = true;
          };
        };
      };
    }