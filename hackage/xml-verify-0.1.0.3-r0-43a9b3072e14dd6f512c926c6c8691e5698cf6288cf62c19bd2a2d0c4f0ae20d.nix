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
    flags = { openssl = false; nss = false; gcrypt = false; gnutls = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "xml-verify"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "james.hobson@jotron.com";
      author = "James Hobson";
      homepage = "https://github.com/jotron-as/xml-verify";
      url = "";
      synopsis = "Verifying XML signatures";
      description = "A small library, that calls xmlsec, for verifying XML. It also contains a wrapper for use with HXT";
      buildType = "Simple";
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
        pkgconfig = ((((pkgs.lib).optional (!flags.openssl && !flags.nss && !flags.gcrypt && !flags.gnutls) (pkgconfPkgs."xmlsec1" or (errorHandler.pkgConfDepError "xmlsec1")) ++ (pkgs.lib).optional (flags.openssl) (pkgconfPkgs."xmlsec1-openssl" or (errorHandler.pkgConfDepError "xmlsec1-openssl"))) ++ (pkgs.lib).optional (flags.nss) (pkgconfPkgs."xmlsec1-nss" or (errorHandler.pkgConfDepError "xmlsec1-nss"))) ++ (pkgs.lib).optional (flags.gcrypt) (pkgconfPkgs."xmlsec1-GCrypt" or (errorHandler.pkgConfDepError "xmlsec1-GCrypt"))) ++ (pkgs.lib).optional (flags.gnutls) (pkgconfPkgs."xmlsec1-gnutls" or (errorHandler.pkgConfDepError "xmlsec1-gnutls"));
        buildable = true;
        };
      };
    }