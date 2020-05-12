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
      identifier = { name = "imperative-edsl-vhdl"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "Markus Aronsson";
      homepage = "";
      url = "";
      synopsis = "Deep embedding of VHDL programs with code generation.";
      description = "Deep embedding of VHDL programs with code generation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
          (hsPkgs."operational-alacarte" or (errorHandler.buildDepError "operational-alacarte"))
          (hsPkgs."language-vhdl" or (errorHandler.buildDepError "language-vhdl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }