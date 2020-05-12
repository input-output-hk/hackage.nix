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
      specVersion = "1.18";
      identifier = { name = "deiko-config"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Yorick Laupa";
      maintainer = "yo.eight@gmail.com";
      author = "Yorick Laupa";
      homepage = "https://github.com/YoEight/deiko-config";
      url = "";
      synopsis = "Small and typesafe configuration library.";
      description = "Small and typesafe configuration library. The library provides good error messages and comes with a bottom-up typechecker in order to catch more configuration errors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      };
    }