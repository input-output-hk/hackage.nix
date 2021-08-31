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
      specVersion = "3.0";
      identifier = { name = "if-instance"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Sam Derbyshire";
      maintainer = "Sam Derbyshire";
      author = "Sam Derbyshire";
      homepage = "https://github.com/sheaf/if-instance";
      url = "";
      synopsis = "Branch on whether a constraint is satisfied";
      description = "This library provides a mechanism that can be used to branch on\nwhether a constraint is satisfied (not limited to typeclass instances,\ndespite the name of the library).\n\nUsage example:\n\n@\n\n{-# OPTIONS_GHC -fplugin=IfCt.Plugin #-}\n\nmodule MyModule where\n\nimport Data.Constraint.If ( IfCt(ifCt) )\n\nhypot :: forall a. ( Floating a, IfCt (FMA a) ) => a -> a -> a\nhypot = ifCt @(FMA a) withFMA withoutFMA\n  where\n    withFMA :: FMA a => a -> a -> a\n    withFMA a b =\n      let\n        h = sqrt \$ fma a a (b * b)\n        h² = h * h\n        a² = a * a\n        x = fma (-b) b (h² - a²) + fma h h (-h²) - fma a a (-a²)\n      in\n        h - x / ( 2 * h )\n    withoutFMA :: a -> a -> a\n    withoutFMA a b = sqrt ( a * a + b * b )\n@\n\nHere we select between two ways of computing the hypotenuse function\nbased on whether we have access to the fused multiply-add operation\n\n@ fma :: FMA a => a -> a -> a -> a @\n\nwhich computes @ \\\\ a b c -> ( a * b ) + c @ in a single instruction,\nproviding stronger guarantees about precision of the resul.\n\nA call of the form @hypot \\@MyNumberType@ will either use the robust @withFMA@\nfunction when an @FMA MyNumberType@ instance is available, or will fallback\nto the simple @withoutFMA@ implementation when no such instance can be found.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-tcplugin-api" or (errorHandler.buildDepError "ghc-tcplugin-api"))
          ];
        buildable = true;
        };
      sublibs = {
        "if-instance-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."if-instance" or (errorHandler.buildDepError "if-instance"))
            ];
          buildable = true;
          };
        };
      tests = {
        "if-instance-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."if-instance" or (errorHandler.buildDepError "if-instance"))
            ];
          buildable = true;
          };
        };
      };
    }