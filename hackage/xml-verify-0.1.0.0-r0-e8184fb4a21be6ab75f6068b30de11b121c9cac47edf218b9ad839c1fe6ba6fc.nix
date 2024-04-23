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
      specVersion = "2.4";
      identifier = { name = "xml-verify"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "james.hobson@jotron.com";
      author = "James Hobson";
      homepage = "https://github.com/jotron-as/xml-verify";
      url = "";
      synopsis = "Verifying XML signatures";
      description = "A small library, that calls xmlsec, for verifying XML. It also contains a wrapper for use with HXT";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cryptostore" or (errorHandler.buildDepError "cryptostore"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [ (pkgs."xmlsec1" or (errorHandler.sysDepError "xmlsec1")) ];
        buildable = true;
      };
    };
  }