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
      identifier = { name = "sockets-and-pipes"; version = "0.3"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Joy of Haskell <hello@joyofhaskell.com>";
      author = "Chris Martin, Julie Moronuki";
      homepage = "";
      url = "";
      synopsis = "Support for the Sockets and Pipes book";
      description = "This package contains some utilities that support /Sockets and Pipes/\n(available on <https://leanpub.com/sockets-and-pipes Leanpub>),\nas well as re-exports from all the libraries mentioned in the book.\n\nPlease read the \"SocketsAndPipes.Syllabus\".\n\nThis release is for the sixth draft of the book, released September 2022.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ascii" or (errorHandler.buildDepError "ascii"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."list-transformer" or (errorHandler.buildDepError "list-transformer"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
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