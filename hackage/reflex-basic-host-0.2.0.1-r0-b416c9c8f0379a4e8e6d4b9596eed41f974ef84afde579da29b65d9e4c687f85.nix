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
      identifier = { name = "reflex-basic-host"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "dave.laing.80@gmail.com, jack.kelly@data61.csiro.au";
      author = "Dave Laing";
      homepage = "https://github.com/qfpl/reflex-basic-host/";
      url = "";
      synopsis = "A basic Reflex host for backend work";
      description = "<<https://raw.githubusercontent.com/qfpl/assets/master/data61-transparent-bg.png>>\n\nreflex-basic-host provides a basic Reflex host for backend work. It\nprovides instances for most of the important Reflex typeclasses.\n\n@Reflex.Host.Basic.basicHostWithQuit@ is the main entry point for\nrunning FRP code. Use the @TriggerEvent@ instance to construct\n@Event@s and control when they fire, and use the @PerformEvent@\ninstance to take actions in response to @Event@ firings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."ref-tf" or (errorHandler.buildDepError "ref-tf"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-basic-host" or (errorHandler.buildDepError "reflex-basic-host"))
            ];
          buildable = true;
          };
        "counter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-basic-host" or (errorHandler.buildDepError "reflex-basic-host"))
            ];
          buildable = true;
          };
        "multithread" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-basic-host" or (errorHandler.buildDepError "reflex-basic-host"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            ];
          buildable = true;
          };
        };
      };
    }