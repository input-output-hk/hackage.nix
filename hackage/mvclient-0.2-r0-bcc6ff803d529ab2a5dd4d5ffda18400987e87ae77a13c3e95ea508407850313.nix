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
      identifier = { name = "mvclient"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cdsmith@gmail.com";
      author = "Chris Smith";
      homepage = "";
      url = "";
      synopsis = "Client library for metaverse systems like Second Life";
      description = "The client side of connections to virtual world environments\nlike Linden Labs' Second Life or OpenSim\n(<http://opensimulator.org>), sometimes known as the\n\"metaverse\".\n\nNote that due to the lack of SSL implementations for\nHaskell, you currently need to set up stunnel for initial\nlogin step for worlds (like Second Life) that use secure\nlogin pages.  This is also the main obstacle to an\nimplementation of the caps system.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."maccatcher" or (errorHandler.buildDepError "maccatcher"))
          (hsPkgs."haxr" or (errorHandler.buildDepError "haxr"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."control-event" or (errorHandler.buildDepError "control-event"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }