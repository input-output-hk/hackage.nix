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
      specVersion = "1.8";
      identifier = { name = "hstest"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "© Dave Hinton, 2010; portions © Koen Claessen";
      maintainer = "Dave Hinton <beakerchu@googlemail.com>";
      author = "Dave Hinton";
      homepage = "http://bitbucket.org/dave4420/hstest/wiki/Home";
      url = "";
      synopsis = "Runs tests via QuickCheck1 and HUnit; like quickCheck-script but uses GHC api";
      description = "\n'hstest' looks through all Haskell source files in the current directory (by default), runs all properties via QuickCheck 1\n(properties must have a name that starts 'prop_'), and runs all tests via HUnit (tests must have a name that starts 'test_').\n\nFor example, suppose you have this Haskell source file called 'mysort.hs':\n\n> mySort xs = ... -- a function you wish to test (definition elided)\n>\n> prop_lengthStaysTheSame xs = length xs == length (mySort xs)\n> prop_sumStaysTheSame xs = sum xs == sum (mySort xs)\n> prop_lowestElementAtStart, prop_highestElementAtEnd :: [Int] -> Bool\n> prop_lowestElementAtStart xs = not (null xs) ==> minimum xs == head (mySort xs)\n> prop_highestElementAtEnd xs = not (null xs) ==> maximum xs == last (mySort xs)\n\nThen to check all these tests, you run\n\n> $ hstest\n> Failed prop_highestElementAtEnd:\n>  *  [-3,2,-2]\n> mysort.hs: Failed 1 property, passed 3 properties\n\nOops! Fix 'mySort' and try again:\n\n> $ hstest\n> mysort.hs: Passed 4 properties";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hstest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }