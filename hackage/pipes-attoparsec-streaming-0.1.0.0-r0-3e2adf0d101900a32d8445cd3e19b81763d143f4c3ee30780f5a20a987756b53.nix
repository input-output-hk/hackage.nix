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
      specVersion = "1.8";
      identifier = {
        name = "pipes-attoparsec-streaming";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyrght (c) 2012 Martin Grabmueller";
      maintainer = "martin@grabmueller.de";
      author = "Martin Grabmueller";
      homepage = "";
      url = "";
      synopsis = "Streaming parsing in the pipes-core framework with Attoparsec.";
      description = "This module exports the single function parse, which can be used to\nrun an Attoparsec parser in a streaming fashion, which means that\nthe parser is not only run incrementally across the input (which\ncan be done with plain Attoparsec or packages like\npipes-attoparsec), but that the parse results are delivered\nincrementally.  This package can be seen as a kind of dual to\npipes-attoparsec: the latter runs parser incrementally over their\ninput, whereas the former incrementally delivers output.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pipes-core" or (errorHandler.buildDepError "pipes-core"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "MimeParser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pipes-core" or (errorHandler.buildDepError "pipes-core"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pipes-attoparsec-streaming" or (errorHandler.buildDepError "pipes-attoparsec-streaming"))
          ];
          buildable = true;
        };
      };
    };
  }