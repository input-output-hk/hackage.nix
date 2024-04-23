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
      specVersion = "1.12";
      identifier = { name = "layered-state"; version = "1.1.5"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2018 Luna Team";
      maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
      author = "Luna Team";
      homepage = "https://github.com/luna/layered-state";
      url = "";
      synopsis = "Control structure similar to Control.Monad.State, allowing multiple nested states, distinguishable by provided phantom types.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-utils" or (errorHandler.buildDepError "lens-utils"))
          (hsPkgs."monad-branch" or (errorHandler.buildDepError "monad-branch"))
          (hsPkgs."monoid" or (errorHandler.buildDepError "monoid"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."prologue" or (errorHandler.buildDepError "prologue"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."typelevel" or (errorHandler.buildDepError "typelevel"))
        ];
        buildable = true;
      };
      benchmarks = {
        "layered-state-benchmark" = {
          depends = [
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
            (hsPkgs."layered-state" or (errorHandler.buildDepError "layered-state"))
            (hsPkgs."mtl-c" or (errorHandler.buildDepError "mtl-c"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
      };
    };
  }