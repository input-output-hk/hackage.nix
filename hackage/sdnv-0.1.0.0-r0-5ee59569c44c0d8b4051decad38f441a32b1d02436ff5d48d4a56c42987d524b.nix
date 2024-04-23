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
      identifier = { name = "sdnv"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "Lana Black";
      maintainer = "lanablack@eml.cc";
      author = "Lana Black";
      homepage = "";
      url = "";
      synopsis = "Self-delimiting numeric values encoding library";
      description = "Self-delimiting numeric values decoding/encoding implementation conformant with RFC6256.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }