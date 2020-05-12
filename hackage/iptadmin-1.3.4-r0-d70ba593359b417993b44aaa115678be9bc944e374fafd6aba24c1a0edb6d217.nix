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
      identifier = { name = "iptadmin"; version = "1.3.4"; };
      license = "BSD-3-Clause";
      copyright = "2011 Evgeny Tarasov";
      maintainer = "etarasov.ekb@gmail.com";
      author = "Evgeny Tarasov";
      homepage = "http://iptadmin.117.su";
      url = "";
      synopsis = "web-interface for iptables";
      description = "web-interface for iptables with PAM authorization";
      buildType = "Simple";
      };
    components = {
      exes = {
        "iptadmin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."happstack-server-tls" or (errorHandler.buildDepError "happstack-server-tls"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."iptables-helpers" or (errorHandler.buildDepError "iptables-helpers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."pam" or (errorHandler.buildDepError "pam"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
            (hsPkgs."hdaemonize" or (errorHandler.buildDepError "hdaemonize"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."augeas" or (errorHandler.buildDepError "augeas"))
            ];
          buildable = true;
          };
        };
      };
    }