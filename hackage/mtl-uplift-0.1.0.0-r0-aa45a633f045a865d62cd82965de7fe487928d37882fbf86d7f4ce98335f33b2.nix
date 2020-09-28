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
      specVersion = "2.4";
      identifier = { name = "mtl-uplift"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Samuel Schlesinger";
      maintainer = "sgschlesinger@gmail.com";
      author = "Samuel Schlesinger";
      homepage = "https://github.com/SamuelSchlesinger/mtl-uplift";
      url = "";
      synopsis = "Lift substacks of monad transformer stacks";
      description = "Lift substacks of monad transformer stacks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "stm-actor-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mtl-uplift" or (errorHandler.buildDepError "mtl-uplift"))
            ];
          buildable = true;
          };
        };
      };
    }