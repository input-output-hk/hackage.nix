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
      identifier = { name = "mu-tracing"; version = "0.4.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright © 2020 <http://47deg.com 47 Degrees>";
      maintainer = "alejandro.serrano@47deg.com";
      author = "Alejandro Serrano";
      homepage = "https://higherkindness.io/mu-haskell/";
      url = "";
      synopsis = "Tracing support for Mu";
      description = "Generate distributed traces for Mu services";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mu-rpc" or (errorHandler.buildDepError "mu-rpc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tracing-control" or (errorHandler.buildDepError "tracing-control"))
        ];
        buildable = true;
      };
    };
  }