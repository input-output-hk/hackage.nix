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
      specVersion = "1.8";
      identifier = { name = "djinn-ghc"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trupill@gmail.com   ";
      author = "Alejandro Serrano";
      homepage = "";
      url = "";
      synopsis = "Generate Haskell code from a type. Bridge from Djinn to GHC API.";
      description = "Djinn uses an theorem prover for intuitionistic propositional logic\nto generate a Haskell expression when given a type.\nThis is the bridge from djinn-lib to GHC API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."djinn-lib" or (errorHandler.buildDepError "djinn-lib"))
        ];
        buildable = true;
      };
    };
  }