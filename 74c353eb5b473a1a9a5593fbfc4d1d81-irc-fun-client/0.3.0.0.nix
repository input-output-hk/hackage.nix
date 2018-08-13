{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "irc-fun-client";
        version = "0.3.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/irc-fun-client/";
      url = "";
      synopsis = "Another library for writing IRC clients.";
      description = "This is an IRC client library that uses @irc-fun-messages@ library package\nfor working with the IRC protocol. It provides functions for sending messages\nand for receiving them, with the IRC protocol messages abstracted by\nconvenient command and event datatypes.";
      buildType = "Simple";
    };
    components = {
      "irc-fun-client" = {
        depends  = [
          (hsPkgs.auto-update)
          (hsPkgs.base)
          (hsPkgs.irc-fun-messages)
          (hsPkgs.fast-logger)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.time-units)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }