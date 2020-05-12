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
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "greg-client"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Eugene Kirpichov, Dmitry Astapov 2010";
      maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>, Dmitry Astapov <dastapov@gmail.com>";
      author = "Eugene Kirpichov <ekirpichov@gmail.com>, Dmitry Astapov <dastapov@gmail.com>";
      homepage = "http://code.google.com/p/greg/";
      url = "";
      synopsis = "A scalable distributed logger with a high-precision global time axis.";
      description = "Haskell client to the \\\"greg\\\" distributed logger with a high-precision global time axis (<http://code.google.com/p/greg/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."system-uuid" or (errorHandler.buildDepError "system-uuid"))
          (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }