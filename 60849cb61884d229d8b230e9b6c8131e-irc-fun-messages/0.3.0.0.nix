{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "irc-fun-messages";
          version = "0.3.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
        maintainer = "fr33domlover@riseup.net";
        author = "fr33domlover";
        homepage = "http://rel4tion.org/projects/irc-fun-messages/";
        url = "";
        synopsis = "Types and functions for working with the IRC protocol.";
        description = "Another IRC library. It doesn't provide a client API though. It just provides\ndatatypes, and functions for parsing and serializing IRC commands and\nreplies.\n\nThe package is based on RFC 2812, with modifications and extensions to work\nwith Freenode.\n\nNOTE: The handling of IRC protocol messages is incomplete, but there\nis enough to e.g. create an IRC bot. Missing features are being added as\nneeded while working on <https://notabug.org/fr33domlover/funbot FunBot>, and\nof course patches are welcome.";
        buildType = "Simple";
      };
      components = {
        "irc-fun-messages" = {
          depends  = [
            hsPkgs.base
            hsPkgs.irc-fun-types
            hsPkgs.regex-applicative
            hsPkgs.text
          ];
        };
      };
    }