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
      identifier = { name = "lift-generics"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/lift-generics";
      url = "";
      synopsis = "GHC.Generics-based Language.Haskell.TH.Syntax.lift implementation";
      description = "This package provides a \"GHC.Generics\"-based @genericLiftWithPkg@\nfunction (intended for GHC 7.10 and earlier), as well as a\n@genericLift@ function (only available on GHC 8.0 and later),\nboth of which can be used for providing a\n@Language.Haskell.TH.Syntax.lift@ implementation. See the\ndocumentation in the \"Language.Haskell.TH.Lift.Generics\" module\nto get started.\n\nCredit goes to Matthew Pickering for\n<https://ghc.haskell.org/trac/ghc/ticket/1830#comment:12 suggesting this idea>.\n\nNote that due to API limitations, \"GHC.Generics\" wasn't powerful\nenough to come up with the entirety of a `lift` implementation prior\nto GHC 8.0. For this reason, @genericLiftWithPkg@ requires you to\nproduce the package name yourself, which proves to be no small feat\n(see the documentation for more info).\n\nLuckily, you don't have to jump through as many hoops on GHC 8.0 and\nlater: simply use the @genericLift@ function, and life is good.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lift-generics" or (errorHandler.buildDepError "lift-generics"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }