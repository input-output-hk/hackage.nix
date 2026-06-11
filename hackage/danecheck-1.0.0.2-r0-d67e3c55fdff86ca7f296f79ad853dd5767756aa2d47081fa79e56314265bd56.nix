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
      specVersion = "3.0";
      identifier = { name = "danecheck"; version = "1.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "postfix-users@dukhovni.org";
      author = "Viktor Dukhovni (with contributions from Peter Duchovni)";
      homepage = "https://github.com/vdukhovni/danecheck";
      url = "";
      synopsis = "DANE SMTP validator";
      description = "@danecheck@ is a diagnostic tool that verifies the\nDANE TLSA security (RFC 7672) of an email domain's SMTP\ndelivery path.  For the given domain it follows the MX\nrecords, looks up A\\/AAAA addresses for each MX host,\nqueries TLSA records at @_25._tcp.\\<mx\\>@ (with the\nRFC 7672 CNAME extension to a TLSA base name), connects\non port 25, performs STARTTLS, and reports whether each\npeer's certificate chain matches the TLSA RRset.\n.\nOutput is streamed in BIND-style record form with\nper-IP diagnostics: the DNS chain for each lookup, the\nnegotiated TLS version, cipher and key-exchange group,\nthe presented peer names, and a depth-by-depth view\nof the certificate chain with TLSA match\\/mismatch\nannotations.  The process exit code reflects whether\nthe domain validated cleanly.\n.\nSee the @README.md@ for usage examples and command-line\noptions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "danecheck" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."crypton-asn1-encoding" or (errorHandler.buildDepError "crypton-asn1-encoding"))
            (hsPkgs."crypton-asn1-types" or (errorHandler.buildDepError "crypton-asn1-types"))
            (hsPkgs."crypton-x509" or (errorHandler.buildDepError "crypton-x509"))
            (hsPkgs."crypton-x509-store" or (errorHandler.buildDepError "crypton-x509-store"))
            (hsPkgs."crypton-x509-validation" or (errorHandler.buildDepError "crypton-x509-validation"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."dnsbase" or (errorHandler.buildDepError "dnsbase"))
            (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
            (hsPkgs."idna2008" or (errorHandler.buildDepError "idna2008"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."ram" or (errorHandler.buildDepError "ram"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time-hourglass" or (errorHandler.buildDepError "time-hourglass"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unix-time" or (errorHandler.buildDepError "unix-time"))
          ];
          buildable = true;
        };
      };
    };
  }