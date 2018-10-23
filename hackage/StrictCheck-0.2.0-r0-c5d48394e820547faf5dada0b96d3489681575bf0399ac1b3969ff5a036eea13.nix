{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "StrictCheck";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "(c) 2018 Kenneth Foner, Hengchu Zhang, and Leo Lampropoulos";
      maintainer = "kwf@very.science";
      author = "Kenneth Foner, Hengchu Zhang, and Leo Lampropoulos";
      homepage = "https://github.com/kwf/StrictCheck#readme";
      url = "";
      synopsis = "Keep Your Laziness In Check";
      description = "StrictCheck is a property-based random testing framework for\nobserving, specifying, and testing the strictness behaviors of Haskell\nfunctions. Strictness behavior is traditionally considered a non-functional\nproperty; StrictCheck allows it to be tested as if it were one, by reifying\ndemands on data structures so they can be manipulated and examined within\nHaskell.";
      buildType = "Simple";
    };
    components = {
      "StrictCheck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.containers)
          (hsPkgs.generics-sop)
          (hsPkgs.bifunctors)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "test-strictcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.generics-sop)
            (hsPkgs.deepseq)
            (hsPkgs.StrictCheck)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }