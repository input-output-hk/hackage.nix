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
      identifier = { name = "extemp"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "http://patch-tag.com/r/salazar/extemp";
      url = "";
      synopsis = "automated printing for extemp speakers";
      description = "Extemp speakers conventionally must repetitively print from the same news services week after week, afterwords sorting the results by news area in a time consuming, labor intensive process. This package builds a web app automates the process. ";
      buildType = "Simple";
      };
    components = {
      exes = {
        "extemp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."smartGroup" or (errorHandler.buildDepError "smartGroup"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."happstack-state" or (errorHandler.buildDepError "happstack-state"))
            (hsPkgs."happstack-util" or (errorHandler.buildDepError "happstack-util"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
            (hsPkgs."happstack-auth" or (errorHandler.buildDepError "happstack-auth"))
            ];
          buildable = true;
          };
        };
      };
    }