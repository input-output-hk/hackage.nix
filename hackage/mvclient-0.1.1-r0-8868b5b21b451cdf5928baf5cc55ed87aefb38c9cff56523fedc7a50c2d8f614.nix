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
      identifier = { name = "mvclient"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cdsmith@gmail.com";
      author = "Chris Smith";
      homepage = "";
      url = "";
      synopsis = "Client library for metaverse systems like Second Life";
      description = "This implements the client side of connections to virtual world environments\nlike Linden Labs' Second Life or OpenSim (http://opesimulator.org), sometimes\nknown as the \"metaverse\".\n\nBecause of the lack of SSL implementations for Haskell, you currently need\nto set up stunnel for initial login step for worlds (like Second Life) that\nuse secure login pages.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."maccatcher" or (errorHandler.buildDepError "maccatcher"))
          (hsPkgs."haxr" or (errorHandler.buildDepError "haxr"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."network-bytestring" or (errorHandler.buildDepError "network-bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."control-event" or (errorHandler.buildDepError "control-event"))
          ];
        buildable = true;
        };
      };
    }