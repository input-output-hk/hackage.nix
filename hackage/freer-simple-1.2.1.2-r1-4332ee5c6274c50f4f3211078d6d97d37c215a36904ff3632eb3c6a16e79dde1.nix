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
      specVersion = "2.4";
      identifier = { name = "freer-simple"; version = "1.2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Allele Dev; 2017 Ixperta Solutions s.r.o.; 2017 Alexis King";
      maintainer = "Alexis King <lexi.lambda@gmail.com>";
      author = "Allele Dev, Ixcom Core Team, Alexis King, and other contributors";
      homepage = "https://github.com/lexi-lambda/freer-simple";
      url = "";
      synopsis = "A friendly effect system for Haskell.";
      description = "An implementation of an effect system for Haskell (a fork of\n<http://hackage.haskell.org/package/freer-effects freer-effects>), which is\nbased on the work of Oleg Kiselyov et al.:\n\n* <http://okmij.org/ftp/Haskell/extensible/more.pdf Freer Monads, More Extensible Effects>\n* <http://okmij.org/ftp/Haskell/zseq.pdf Reflection without Remorse>\n* <http://okmij.org/ftp/Haskell/extensible/exteff.pdf Extensible Effects>\n\nThe key features are:\n\n* An efficient effect system for Haskell - as a library!\n* Reimplementations of several common Haskell monad transformers as effects.\n* Core components for defining your own Effects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."natural-transformation" or (errorHandler.buildDepError "natural-transformation"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "freer-simple-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
          ];
          buildable = true;
        };
      };
      tests = {
        "freer-simple-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "freer-simple-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }