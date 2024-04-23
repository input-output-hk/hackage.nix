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
      identifier = { name = "irc-fun-types"; version = "0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://hub.darcs.net/fr33domlover/irc-fun-types";
      url = "";
      synopsis = "Common types for IRC related packages";
      description = "This library provides types useful to programs and libraries working with\nInternet Relay Chat (IRC). It allows basic IRC concepts like channel,\nnickname, message and so on to be used by IRC parsers and IRC clients and IRC\nservers without unnecessary duplication of type definitions.\n\nNote that the library possibly doesn't yet fully handle all the types related\nto the various IRC messages types, for example user and channel modes. These\nare added gradually, and patches are welcome.\n\nAll the text based types use strict 'Data.Text.Text'. This allows efficient\nprocessing of message text while supporting character-based operations that\nrequire recognizing Unicode.\n\nIf you are writing a simple IRC client module, you can probably use\n\"Network.Irc.Types.Base\", which contains the subset you'll likely need.\nBut if you're writing an IRC message parser or serializer, you'll probably\nwant to use \"Network.Irc.Types\", which contains all the types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }