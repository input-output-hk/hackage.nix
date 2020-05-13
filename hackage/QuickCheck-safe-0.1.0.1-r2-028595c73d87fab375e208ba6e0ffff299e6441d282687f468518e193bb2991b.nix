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
      identifier = { name = "QuickCheck-safe"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2015 Bertram Felgenhauer";
      maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
      author = "Bertram Felgenhauer";
      homepage = "";
      url = "";
      synopsis = "Safe reimplementation of QuickCheck's core";
      description = "QuickCheck-safe reimplements the quickCheck functionality with a pure\ninterface and a very small trusted base (see Test.QuickCheck.Safe.Trusted).\n\n* uses the existing Arbitrary instances\n* implemented features: testing, result minimization (i.e., shrinking)\n* missing features: expected failures, label frequencies, coverage\n\nThe package is targeted at users who want to leverage SafeHaskell for\nsandboxing.\n\n> > putStr \$ quickCheck (inventQCGen ()) (\\x -> length (x :: [()]) < 10)\n> *** Failed! Falsifiable (after 18 tests and 3 shrinks):\n> [(),(),(),(),(),(),(),(),(),(),(),(),(),(),()]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }