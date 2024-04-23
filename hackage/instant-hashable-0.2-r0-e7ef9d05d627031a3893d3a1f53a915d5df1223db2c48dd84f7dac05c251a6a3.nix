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
      identifier = { name = "instant-hashable"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015";
      maintainer = "renzo@carbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/instant-hashable";
      url = "";
      synopsis = "Generic Hashable instances through instant-generics";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."instant-generics" or (errorHandler.buildDepError "instant-generics"))
        ];
        buildable = true;
      };
    };
  }