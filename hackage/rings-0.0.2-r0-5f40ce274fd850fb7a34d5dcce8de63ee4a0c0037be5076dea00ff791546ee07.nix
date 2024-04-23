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
      identifier = { name = "rings"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris.mckinlay@gmail.com";
      author = "Chris McKinlay";
      homepage = "https://github.com/cmk/rings";
      url = "";
      synopsis = "Rings, semirings, and dioids.";
      description = "Lawful versions of the numeric typeclasses in base.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."property" or (errorHandler.buildDepError "property"))
          (hsPkgs."connections" or (errorHandler.buildDepError "connections"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."connections" or (errorHandler.buildDepError "connections"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."property" or (errorHandler.buildDepError "property"))
            (hsPkgs."rings" or (errorHandler.buildDepError "rings"))
          ];
          buildable = true;
        };
      };
    };
  }