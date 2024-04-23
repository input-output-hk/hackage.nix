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
      specVersion = "1.12";
      identifier = { name = "dovetail-aeson"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Phil Freeman";
      maintainer = "freeman.phil@gmail.com";
      author = "Phil Freeman";
      homepage = "https://github.com/paf31/dovetail#readme";
      url = "";
      synopsis = "Use Aeson from your Dovetail programs";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dovetail" or (errorHandler.buildDepError "dovetail"))
          (hsPkgs."purescript" or (errorHandler.buildDepError "purescript"))
          (hsPkgs."purescript-cst" or (errorHandler.buildDepError "purescript-cst"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }