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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-typelits-presburger"; version = "0.2.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2015 (c) Hiromi ISHII";
      maintainer = "konn.jinro _at_ gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/ghc-typelits-presburger#readme";
      url = "";
      synopsis = "Presburger Arithmetic Solver for GHC Type-level natural numbers.";
      description = "@ghc-typelits-presburger@ augments GHC type-system with Presburger Arithmetic Solver for Type-level natural numbers.\nYou can use by adding this package to @build-depends@ and add the following pragma to the head of .hs files:\n\n> OPTIONS_GHC -fplugin GHC.TypeLits.Presburger";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
          (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          ];
        buildable = true;
        };
      exes = {
        "simple-arith" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-presburger" or (errorHandler.buildDepError "ghc-typelits-presburger"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }