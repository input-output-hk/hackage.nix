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
      identifier = { name = "servant-wasm"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "David Johnson (c) 2020";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "https://github.com/dmjio/servant-wasm";
      url = "";
      synopsis = "Servant support for delivering WebAssembly";
      description = "Facilities to help deliver WASM from a servant-server.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
        ];
        buildable = true;
      };
    };
  }