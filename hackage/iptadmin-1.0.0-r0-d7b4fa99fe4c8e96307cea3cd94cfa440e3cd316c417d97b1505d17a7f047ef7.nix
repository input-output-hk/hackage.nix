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
      specVersion = "1.4";
      identifier = { name = "iptadmin"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2011 Evgeny Tarasov";
      maintainer = "etarasov.ekb@gmail.com";
      author = "Evgeny Tarasov";
      homepage = "http://iptadmin.confmgr.org";
      url = "";
      synopsis = "web-interface for iptables";
      description = "web-interface for iptables based on happstack with PAM authorisation";
      buildType = "Simple";
      };
    components = {
      exes = {
        "iptadmin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."happstack-state" or (errorHandler.buildDepError "happstack-state"))
            (hsPkgs."happstack-util" or (errorHandler.buildDepError "happstack-util"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."iptables-helpers" or (errorHandler.buildDepError "iptables-helpers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."pam" or (errorHandler.buildDepError "pam"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }