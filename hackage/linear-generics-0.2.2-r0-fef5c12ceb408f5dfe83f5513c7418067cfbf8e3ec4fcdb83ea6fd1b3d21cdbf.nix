{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "linear-generics"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2011-2013 Universiteit Utrecht,\nUniversity of Oxford,\nRyan Scott,\n2021 David Feuer";
      maintainer = "David.Feuer@gmail.com";
      author = "José Pedro Magalhães";
      homepage = "https://github.com/linear-generics/linear-generics";
      url = "";
      synopsis = "Generic programming library for generalised deriving.";
      description = "This package offers a version of\n<https://hackage.haskell.org/package/base/docs/GHC-Generics.html GHC.Generics>\nwith two important improvements:\n\n1. The @to@, @from@, @to1@, and @from1@ methods have multiplicity-polymorphic\ntypes, allowing them to be used with either traditional Haskell code or\nlinearly typed code.\n\n2. The representations used for @Generic1@ are modified slightly. As a result,\n@to1@ and @from1@ never need to use @fmap@. This can\n<https://gitlab.haskell.org/ghc/ghc/-/issues/15969 greatly improve performance>,\nand it is\n<https://github.com/tweag/linear-base/pull/316 necessary to support multiplicity polymorphism>.\nA smaller change, approximately\n<https://gitlab.haskell.org/ghc/ghc/-/issues/7492 as proposed by spl>,\nreduces the number of instances that must be written to actually use @Generic1@\nfor deriving instances of other classes.\n\nFor more details, see the \"Generics.Linear\" documentation.\n\nThe implementation is based on the @generic-deriving@ package, first described in the paper\n\n*  /A generic deriving mechanism for Haskell/.\nJose Pedro Magalhaes, Atze Dijkstra, Johan Jeuring, and Andres Loeh.\nHaskell'10.\n\nThis library is organized as follows:\n\n* \"Generics.Linear\" defines the core functionality for generics,\nincluding the multiplicity-polymorphic @Generic(1)@ classes and\na replacement for the @:.:@ composition type.\n\n* \"Generics.Linear.TH\" implements Template Haskell functionality for\nderiving instances of @Generic(1)@.\n\n* \"Generics.Linear.Unsafe.ViaGHCGenerics\" offers @DerivingVia@ targets to\nderive @Generic@ and @Generic1@ instances from\n@\"GHC.Generics\".'GHC.Generics.Generic'@. Because these instances necessarily\nuse unsafe coercions, their use will likely inhibit full optimization of\ncode using them.\n\nEducational code: the educational modules exported by\n<https://hackage.haskell.org/package/generic-deriving generic-deriving>\nhave been copied into the @tests\\/Generic\\/Deriving@ directory\nin this repository, with the very few modifications required to\naccommodate the differences between the @Generic1@ representations\nhere and in @base@. All the same caveats apply as in the originals;\nsee that package's @README@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear-generics" or (errorHandler.buildDepError "linear-generics"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }