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
      identifier = { name = "crjdt-haskell"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Amar Potghan";
      maintainer = "amarpotghan@gmail.com";
      author = "Amar Potghan";
      homepage = "https://github.com/amarpotghan/crjdt-haskell#readme";
      url = "";
      synopsis = "A Conflict-Free Replicated JSON Datatype for Haskell";
      description = "A Conflict-Free Replicated JSON Datatype for Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
        ];
        buildable = true;
      };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."crjdt-haskell" or (errorHandler.buildDepError "crjdt-haskell"))
          ];
          buildable = true;
        };
      };
      tests = {
        "crjdt-haskell-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."crjdt-haskell" or (errorHandler.buildDepError "crjdt-haskell"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }