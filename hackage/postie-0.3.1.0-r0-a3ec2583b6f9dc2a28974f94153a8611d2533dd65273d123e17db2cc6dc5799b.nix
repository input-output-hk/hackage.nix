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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "postie"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex.biehl@gmail.com";
      author = "Alex Biehl";
      homepage = "";
      url = "";
      synopsis = "SMTP server library to receive emails from within Haskell programs.";
      description = "`postie` is a little smtp server library for receiving emails. It is currently\nin a very early stage and not yet fully standard compatible although the standard\nprotocol is already supported.\n\n* At the time of writing parameters on smtp commands can not be parsed.\n\n* Handler functions need to return more detailed information to cancel a transaction.\n\n`postie` supportes hooks on key commands in an smtp session like\n\n* on connection open and close\n\n* on /MAIL FROM/ command e.g. to intercept transaction if sender is blacklisted\n\n* on /RCPT TO/ command e.g. to check if recipient is existent on your server\n\n* and many more\n\nTo run `postie` you only need to supply a function which takes a `Mail` and\nreturn `Accepted` or `Rejected`. `mailBody` is a `pipes` `Producer` which\nstreams the encoded body directly to your application code. The body is not\nparsed by `postie` since it depends on what the application wants to do with\nthe mail data. Eventually I will create a seperate package for parsing mime\nmessages with `pipes-parse` when postie becomes more stable and standard compliant.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."cprng-aes" or (errorHandler.buildDepError "cprng-aes"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
        ];
        buildable = true;
      };
      exes = {
        "postie-example-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."postie" or (errorHandler.buildDepError "postie"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
    };
  }