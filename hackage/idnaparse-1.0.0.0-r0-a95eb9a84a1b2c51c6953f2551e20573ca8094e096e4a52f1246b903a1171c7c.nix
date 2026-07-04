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
      identifier = { name = "idnaparse"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Viktor Dukhovni";
      maintainer = "ietf-dane@dukhovni.org";
      author = "Viktor Dukhovni";
      homepage = "https://github.com/dnsbase/idnaparse";
      url = "";
      synopsis = "IDNA-aware DNS-name lint and reporter";
      description = "@idnaparse@ reads a stream of presentation-form domain names\n(one per line on stdin) and emits one JSON record per name on\nstdout.  Each record reports either a successful parse (with\ncanonical presentation form, Unicode display form, and the\nset of label-form classifications -- LDH, ALABEL, ULABEL,\nFAKEA, ATTRLEAF, OCTET, WILDLABEL) or an error with enough\ndetail to identify the offending label and the specific rule\nthat failed.\n\nBuilt on the @idna2008@ library.  Useful for sweeping a zone\nfile or registrar feed for IDNA conformance, building a\nsummary of the label kinds present in a corpus, or as the\nparsing front end for ad-hoc DNS-name analysis pipelines.\n\nSee @idnaparse --help@, @idnaparse --explain-forms@, and\n@idnaparse --explain-opts@ for the full CLI vocabulary.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "idnaparse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."idna2008" or (errorHandler.buildDepError "idna2008"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }