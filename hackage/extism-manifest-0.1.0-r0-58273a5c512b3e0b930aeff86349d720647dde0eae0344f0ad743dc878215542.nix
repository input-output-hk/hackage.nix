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
      specVersion = "3.0";
      identifier = { name = "extism-manifest"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@extism.org";
      author = "Extism authors";
      homepage = "";
      url = "";
      synopsis = "Extism manifest bindings";
      description = "Bindings to Extism WebAssembly manifest";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
        ];
        buildable = true;
      };
    };
  }