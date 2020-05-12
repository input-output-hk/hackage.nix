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
      specVersion = "1.10";
      identifier = { name = "irc-fun-messages"; version = "0.1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/irc-fun-messages/";
      url = "";
      synopsis = "Types and functions for working with the IRC protocol.";
      description = "Another IRC library. It doesn't provide a client API though. It just provides\ndatatypes, and functions for parsing and serializing IRC commands and\nreplies.\n\nThe package is based on RFC 2812, with modifications and extensions to work\nwith Freenode.\n\nNOTE: The handling of IRC protocol messages is FAR from complete, but there\nis enough to e.g. create a basic IRC bot. Missing features are being added as\nneeded while working on <http://rel4tion.org/projects/funbot FunBot>, and of\ncourse patches are welcome.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          ];
        buildable = true;
        };
      };
    }