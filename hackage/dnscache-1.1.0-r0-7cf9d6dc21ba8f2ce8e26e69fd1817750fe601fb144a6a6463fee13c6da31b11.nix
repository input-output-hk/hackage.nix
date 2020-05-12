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
      identifier = { name = "dnscache"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "Caching DNS resolver library and mass DNS resolver utility";
      description = "This library implements a caching, asynchronous DNS resolver and\nprovides a command line utility for mass DNS resolution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contstuff" or (errorHandler.buildDepError "contstuff"))
          (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "massdns" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }