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
      specVersion = "1.6";
      identifier = { name = "hledger-vty"; version = "0.13"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A hledger add-on command providing a full-window console interface.";
      description = "A hledger add-on command providing a full-window console interface.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hledger-vty" = {
          depends = [
            (hsPkgs."hledger" or (errorHandler.buildDepError "hledger"))
            (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      };
    }