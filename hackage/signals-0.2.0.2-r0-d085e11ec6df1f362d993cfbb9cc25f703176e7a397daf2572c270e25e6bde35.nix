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
      identifier = { name = "signals"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "Markus Aronsson";
      homepage = "";
      url = "";
      synopsis = "Synchronous signal processing for DSLs.";
      description = "A library for expressing digital signal processing algorithms using a deeply\nembedded domain-specific language. The library supports definitions in functional\nprogramming style, reducing the gap between the mathematical description of\nstreaming  algorithms and their implementation. The deep embedding makes it possible\nto generate efficient VHDL code without any overhead associated with the\nhigh-level programming model.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."language-vhdl" or (errorHandler.buildDepError "language-vhdl"))
          (hsPkgs."operational-alacarte" or (errorHandler.buildDepError "operational-alacarte"))
          (hsPkgs."imperative-edsl-vhdl" or (errorHandler.buildDepError "imperative-edsl-vhdl"))
          (hsPkgs."observable-sharing" or (errorHandler.buildDepError "observable-sharing"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
    };
  }