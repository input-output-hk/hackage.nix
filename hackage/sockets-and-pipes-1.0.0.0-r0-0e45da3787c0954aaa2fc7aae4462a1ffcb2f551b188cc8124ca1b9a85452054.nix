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
      identifier = { name = "sockets-and-pipes"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Type Classes <hello@typeclasses.com>";
      author = "Chris Martin, Julie Moronuki";
      homepage = "";
      url = "";
      synopsis = "Support for the Sockets and Pipes book";
      description = "This package re-exports from all the libraries mentioned in\n/Sockets and Pipes/ (available on <https://leanpub.com/sockets-and-pipes Leanpub>).\n\nVersion 1.* is for the first edition of the book, released May 2023.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ascii" or (errorHandler.buildDepError "ascii"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-run" or (errorHandler.buildDepError "attoparsec-run"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hash-addressed" or (errorHandler.buildDepError "hash-addressed"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unfork" or (errorHandler.buildDepError "unfork"))
        ];
        buildable = true;
      };
    };
  }