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
      identifier = { name = "jonathanscard"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Spearhead Development, L.L.C.";
      maintainer = "Michael Schade <michael@spearheaddev.com>";
      author = "Spearhead Development, L.L.C.";
      homepage = "http://rawr.mschade.me/jonathanscard/";
      url = "";
      synopsis = "An implementation of the Jonathan's Card API.";
      description = "This implements the Jonathan's Card API, as detailed at\n<http://jonathanstark.com/card/#api>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }