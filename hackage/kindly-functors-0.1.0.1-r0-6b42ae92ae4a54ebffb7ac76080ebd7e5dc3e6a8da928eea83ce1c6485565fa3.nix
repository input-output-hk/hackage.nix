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
      specVersion = "3.4";
      identifier = { name = "kindly-functors"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "ssbothwell@gmail.com";
      author = "Solomon Bothwell";
      homepage = "https://www.github.com/solomon-b/kindly-functors";
      url = "";
      synopsis = "A category polymorphic `Functor` typeclass";
      description = "A category polymorphic `Functor` typeclass.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ];
        buildable = true;
      };
      tests = {
        "kindly-functors-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."kindly-functors" or (errorHandler.buildDepError "kindly-functors"))
          ];
          buildable = true;
        };
      };
    };
  }