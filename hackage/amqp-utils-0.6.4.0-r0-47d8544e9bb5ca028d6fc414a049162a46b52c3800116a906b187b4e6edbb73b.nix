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
      specVersion = "1.10";
      identifier = { name = "amqp-utils"; version = "0.6.4.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fd@taz.de";
      author = "Frank Doepper";
      homepage = "";
      url = "";
      synopsis = "AMQP toolset for the command line";
      description = "AMQP tools consisting of:\nAMQP consumer which can\ncreate a temporary queue and attach it to an exchange, or\nattach to an existing queue;\ndisplay header and body info;\nsave message bodies to files;\ncall a callback script.\nAMQP publisher with file, line-by-line and\nhotfolder capabilities.\nAMQP rpc client and server.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "konsum" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."crypton-connection" or (errorHandler.buildDepError "crypton-connection"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."filepath-bytestring" or (errorHandler.buildDepError "filepath-bytestring"))
            (hsPkgs."crypton-x509-system" or (errorHandler.buildDepError "crypton-x509-system"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "agitprop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."crypton-connection" or (errorHandler.buildDepError "crypton-connection"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."rawfilepath" or (errorHandler.buildDepError "rawfilepath"))
            (hsPkgs."filepath-bytestring" or (errorHandler.buildDepError "filepath-bytestring"))
            (hsPkgs."crypton-x509-system" or (errorHandler.buildDepError "crypton-x509-system"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."magic" or (errorHandler.buildDepError "magic"))
            ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"));
          buildable = true;
          };
        "plane" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."crypton-connection" or (errorHandler.buildDepError "crypton-connection"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."filepath-bytestring" or (errorHandler.buildDepError "filepath-bytestring"))
            (hsPkgs."crypton-x509-system" or (errorHandler.buildDepError "crypton-x509-system"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "arbeite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."crypton-connection" or (errorHandler.buildDepError "crypton-connection"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."filepath-bytestring" or (errorHandler.buildDepError "filepath-bytestring"))
            (hsPkgs."crypton-x509-system" or (errorHandler.buildDepError "crypton-x509-system"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }