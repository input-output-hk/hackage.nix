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
        name = "monad-connect";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://hub.darcs.net/fr33domlover/monad-connect";
      url = "";
      synopsis = "Transformer for TCP connection with TLS and SOCKS support";
      description = "This library is a basic monadic wrapper over the @connection@ package. It\nprovides a monad transformer which gives your monad stack the ability to\nmaintain a single TCP connection, possibly over TLS and/or SOCKS.\n\nThis is very convenient for simple client applications which connect to a\nsingle server, but it is /not/ enough for robust applications which want to\nautomatically reconnect on errors. In the latter case, a reconnection and\nerror handling layer can be added on top of the simple transformer provided\nhere.";
      buildType = "Simple";
    };
    components = {
      "monad-connect" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.connection)
          (hsPkgs.exceptions)
          (hsPkgs.transformers)
        ];
      };
    };
  }