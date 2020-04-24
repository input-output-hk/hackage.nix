{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "StrictCheck"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2018 Kenneth Foner, Hengchu Zhang, and Leo Lampropoulos";
      maintainer = "kwf@very.science";
      author = "Kenneth Foner, Hengchu Zhang, and Leo Lampropoulos";
      homepage = "https://github.com/kwf/StrictCheck#readme";
      url = "";
      synopsis = "StrictCheck: Keep Your Laziness In Check";
      description = "StrictCheck is a property-based random testing framework for\nobserving, specifying, and testing the strictness behaviors of Haskell\nfunctions. Strictness behavior is traditionally considered a non-functional\nproperty; StrictCheck allows it to be tested as if it were one, by reifying\ndemands on data structures so they can be manipulated and examined within\nHaskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test-strictcheck" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."StrictCheck" or ((hsPkgs.pkgs-errors).buildDepError "StrictCheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }