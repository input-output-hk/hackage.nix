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
      identifier = { name = "generic-xmlpickler"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Silk";
      maintainer = "code@silk.co";
      author = "Silk";
      homepage = "http://github.com/silkapp/generic-xmlpickler";
      url = "";
      synopsis = "Generic generation of HXT XmlPickler instances using GHC Generics.";
      description = "Generic generation of HXT XmlPickler instances using GHC Generics.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-xmlpickler" or (errorHandler.buildDepError "generic-xmlpickler"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."hxt-pickle-utils" or (errorHandler.buildDepError "hxt-pickle-utils"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
          ];
          buildable = true;
        };
      };
    };
  }