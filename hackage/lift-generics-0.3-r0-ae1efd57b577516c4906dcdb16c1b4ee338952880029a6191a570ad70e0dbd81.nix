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
      identifier = { name = "lift-generics"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015-2017 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/lift-generics";
      url = "";
      synopsis = "GHC.Generics-based Language.Haskell.TH.Syntax.lift implementation";
      description = "This package provides a \"GHC.Generics\"-based @genericLift@\nfunction, which can be used for providing a\n@Language.Haskell.TH.Syntax.lift@ implementation. See the\ndocumentation in the \"Language.Haskell.TH.Lift.Generics\"\nmodule to get started.\n\nCredit goes to Matthew Pickering for\n<https://ghc.haskell.org/trac/ghc/ticket/1830#comment:12 suggesting this idea>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lift-generics" or (errorHandler.buildDepError "lift-generics"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }