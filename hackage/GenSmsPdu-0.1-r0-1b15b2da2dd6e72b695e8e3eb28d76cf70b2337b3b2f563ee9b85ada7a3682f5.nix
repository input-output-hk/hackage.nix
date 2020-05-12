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
      identifier = { name = "GenSmsPdu"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Kwanghoon Choi <lazyswamp@gmail.com>";
      maintainer = "Kwanghoon Choi <lazyswamp@gmail.com>";
      author = "Kwanghoon Choi <lazyswamp@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Automatic SMS message generator";
      description = "GenSmsPdu is a library for random generation of 3GPP SMS\nmessages. It defines a big data type for 3GPP defined\nSMS message formats such as SMS-SUBMIT and SMS-DELIVER \\[1\\].\nUsing QuickCheck, it can generate a list of random SMS messages\nin the data type automatically.\n\nGenSmsPdu offers an encoder to convert an SMS message into\nan SMS PDU (Protocol Data Unit) in bytes, and a decoder to do the reverse. Currently,\nit generates only single paged SMS messages.\n\n\\[1\\] 3GPP TS 23.040 V6.7.0, 3rd Generation Partnership Project\nTechnical Specification Group Core Network and Terminals;\nTechnical Realization of the Short Message Service (SMS)\n(Release 6), March 2006. http:\\/\\/www.3gpp.org.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gensmspdu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }