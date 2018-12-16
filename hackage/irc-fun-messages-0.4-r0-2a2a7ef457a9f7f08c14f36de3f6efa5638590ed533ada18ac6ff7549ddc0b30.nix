{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "irc-fun-messages";
        version = "0.4";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/irc-fun-messages/";
      url = "";
      synopsis = "Types and functions for working with the IRC protocol.";
      description = "Another IRC library. It doesn't provide a client API though. It just provides\nfunctions for parsing and serializing IRC commands and replies.\n\nThe package is based on RFC 2812, with modifications and extensions to work\nwith Freenode.\n\nNOTE: The handling of IRC protocol messages is incomplete, but there\nis enough to e.g. create an IRC bot. Missing features are being added as\nneeded while working on <https://notabug.org/fr33domlover/funbot FunBot>, and\nof course patches are welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.irc-fun-types)
          (hsPkgs.regex-applicative)
          (hsPkgs.text)
        ];
      };
    };
  }