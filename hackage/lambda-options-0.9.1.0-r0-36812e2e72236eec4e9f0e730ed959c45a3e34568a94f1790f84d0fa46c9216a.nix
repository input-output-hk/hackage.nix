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
      identifier = { name = "lambda-options"; version = "0.9.1.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "thomasedingcode@gmail.com";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/lambda-options";
      url = "";
      synopsis = "Declarative command line parser using type-driven pattern matching.";
      description = "Declarative command line parser using type-driven pattern matching.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."read-bounded" or (errorHandler.buildDepError "read-bounded"))
        ];
        buildable = true;
      };
    };
  }