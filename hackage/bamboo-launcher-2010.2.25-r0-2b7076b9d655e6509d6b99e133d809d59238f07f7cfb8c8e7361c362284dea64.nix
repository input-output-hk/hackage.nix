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
      specVersion = "1.2";
      identifier = { name = "bamboo-launcher"; version = "2010.2.25"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/bamboo-launcher";
      url = "";
      synopsis = "bamboo-launcher";
      description = "A standalone bamboo launcher to simplify deployment.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bamboo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
            (hsPkgs."hack-contrib" or (errorHandler.buildDepError "hack-contrib"))
            (hsPkgs."bamboo" or (errorHandler.buildDepError "bamboo"))
            (hsPkgs."hack-handler-hyena" or (errorHandler.buildDepError "hack-handler-hyena"))
            (hsPkgs."mps" or (errorHandler.buildDepError "mps"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."bamboo-theme-blueprint" or (errorHandler.buildDepError "bamboo-theme-blueprint"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }