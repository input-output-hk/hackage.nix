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
      specVersion = "2.2";
      identifier = { name = "llama-cpp-haskell"; version = "0.1.0.1"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "l29ah@riseup.net";
      author = "Sergey Alirzaev";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for the llama.cpp llama-server";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }