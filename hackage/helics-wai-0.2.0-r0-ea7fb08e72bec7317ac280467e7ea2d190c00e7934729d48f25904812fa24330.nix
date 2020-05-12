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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "helics-wai"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "New Relic® agent SDK wrapper for wai.";
      description = "New Relic® agent SDK wrapper for wai.\n\nPlease read example: <https://github.com/philopon/helics/blob/master/helics-wai/example.hs>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."helics" or (errorHandler.buildDepError "helics"))
          ];
        buildable = true;
        };
      exes = {
        "helics-wai-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."helics-wai" or (errorHandler.buildDepError "helics-wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."helics" or (errorHandler.buildDepError "helics"))
            (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }