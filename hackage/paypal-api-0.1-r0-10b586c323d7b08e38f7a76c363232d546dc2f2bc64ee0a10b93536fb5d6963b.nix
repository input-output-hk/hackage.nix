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
      identifier = { name = "paypal-api"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 by Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "http://code.haskell.org/paypal-api/";
      url = "";
      synopsis = "PayPal API, currently supporting \"ButtonManager\"";
      description = "This package is a moderately successful attempt to tame the confusingness of\nPayPal's API using Haskell types. Currently only the ButtonManager API is\nsupported.\n\nType families are used extensively to encode PayPal's validation rules,\nso they can be checked at compile time. Haddock doesn't get all the type\nfamily stuff across, so you may find it easier to read the source code.\nBecause PayPal's documents leave you to guessing, it will take trial and\nerror to get the logic in this package correct, so please contribute your\nfixes. Code changes to this package are likely to break your code, so please\ndepend on a specific version.\n\nTake a look at example.hs.\n\n/The benefits of using PayPal:/\n\n* You can accept credit cards on your website priced for low transaction volumes.\n\n/The drawbacks of using PayPal:/\n\n* PayPal tries to harvest your customers, by annoying them into becoming PayPal members.\n\n* If you are outside the USA, you can't have different shipping rates by country, which is...\nbeyond pathetic.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."http-enumerator" or (errorHandler.buildDepError "http-enumerator"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."web-encodings" or (errorHandler.buildDepError "web-encodings"))
        ];
        buildable = true;
      };
    };
  }