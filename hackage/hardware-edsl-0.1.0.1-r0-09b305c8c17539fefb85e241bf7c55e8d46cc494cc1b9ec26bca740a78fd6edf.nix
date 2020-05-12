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
      identifier = { name = "hardware-edsl"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "Markus Aronsson <mararon@chalmers.se>";
      homepage = "https://github.com/markus-git/hardware-edsl";
      url = "";
      synopsis = "Deep embedding of hardware descriptions with code generation.";
      description = "Deep embedding of hardware descriptions with code generation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
          (hsPkgs."operational-alacarte" or (errorHandler.buildDepError "operational-alacarte"))
          (hsPkgs."language-vhdl" or (errorHandler.buildDepError "language-vhdl"))
          ];
        buildable = true;
        };
      };
    }