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
      identifier = { name = "network-protocol-xmpp"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>\nStephan Maka  <stephan@spaceboyz.net>";
      homepage = "";
      url = "";
      synopsis = "Client <-> Server communication over XMPP";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."libxml-sax" or (errorHandler.buildDepError "libxml-sax"))
          (hsPkgs."hsgnutls" or (errorHandler.buildDepError "hsgnutls"))
          (hsPkgs."gsasl" or (errorHandler.buildDepError "gsasl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
        ];
        buildable = true;
      };
    };
  }