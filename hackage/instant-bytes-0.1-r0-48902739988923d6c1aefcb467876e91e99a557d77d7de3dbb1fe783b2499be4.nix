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
      identifier = { name = "instant-bytes"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015";
      maintainer = "renzo@carbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "";
      url = "";
      synopsis = "Generic Serial instances through instant-generics";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."instant-generics" or (errorHandler.buildDepError "instant-generics"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."instant-bytes" or (errorHandler.buildDepError "instant-bytes"))
            (hsPkgs."instant-generics" or (errorHandler.buildDepError "instant-generics"))
          ];
          buildable = true;
        };
      };
    };
  }