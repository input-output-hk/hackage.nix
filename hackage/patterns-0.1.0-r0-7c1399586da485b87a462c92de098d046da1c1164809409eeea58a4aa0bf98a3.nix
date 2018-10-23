{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14.0";
      identifier = {
        name = "patterns";
        version = "0.1.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2011 - 2013";
      maintainer = "tobias dot schoofs at gmx dot net";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/mom";
      url = "";
      synopsis = "Common patterns in message-oriented applications";
      description = "In distributed, message-oriented applications,\nsimilar communication patterns are used over and over again,\nsuch as Server\\/Client (a.k.a Request\\/Response),\nPublish\\/Subscribe,\nPipline (a.k.a. Push\\/Pull) and\nExclusive Pair (a.k.a. Peer-to-Peer).\nThe Patterns package implements those patterns based on zeromq.\nMore information on zeromq can be found at\n<http://www.zeromq.org>.\nMore examples and a test suite are available\non <http://github.com/toschoo/mom>.\n\nRelease History:\n\n[0.1.0] Major Review:\nConduits replace enumerators,\nInterfaces simplified to ByteString,\nInterfaces simplified in general,\nAdvanced patterns:\nMajordomo Broker.\n\n[0.0.1] Initial Release.";
      buildType = "Simple";
    };
    components = {
      "patterns" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.containers)
          (hsPkgs.zeromq-haskell)
          (hsPkgs.conduit)
          (hsPkgs.mtl)
          (hsPkgs.time)
        ];
      };
    };
  }