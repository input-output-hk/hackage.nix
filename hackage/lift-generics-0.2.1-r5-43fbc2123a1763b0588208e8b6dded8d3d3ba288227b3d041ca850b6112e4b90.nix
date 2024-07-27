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
      identifier = { name = "lift-generics"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015-2017 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/lift-generics";
      url = "";
      synopsis = "GHC.Generics-based Language.Haskell.TH.Syntax.lift implementation";
      description = "This package provides a \"GHC.Generics\"-based @genericLift@\nfunction (only available on GHC 7.4 and later), as well as\na @genericLiftWithPkgFallback@ function (for code that\nmust support GHC 7.2 and earlier) and a\n@genericLiftWithPkg@ function (for use when neither of the\nabove will work), all of which can be used for providing a\n@Language.Haskell.TH.Syntax.lift@ implementation. See the\ndocumentation in the \"Language.Haskell.TH.Lift.Generics\"\nmodule to get started.\n\nCredit goes to Matthew Pickering for\n<https://ghc.haskell.org/trac/ghc/ticket/1830#comment:12 suggesting this idea>.\n\nNote that due to API limitations, \"GHC.Generics\" wasn't\npowerful enough to come up with the entirety of a `lift`\nimplementation prior to GHC 8.0. For GHC 7.4 and later, we\ncan pluck this information out of `Typeable`. For earlier\nversions, and where `Typeable` isn't available,\n@genericLiftWithPkg@ requires you to produce the package\nname yourself, which proves to be no small feat (see the\ndocumentation for more info).\n\nLuckily, you don't have to jump through as many hoops on GHC 7.4 and\nlater: simply use the @genericLift@ function, and life is good.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4" && (compiler.isGhc && compiler.version.lt "7.8")) (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lift-generics" or (errorHandler.buildDepError "lift-generics"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }