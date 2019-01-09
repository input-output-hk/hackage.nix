{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Barracuda"; version = "1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Stephan Friedrichs <stephan.friedrichs@tu-bs.de>,\nHenning Günther <h.guenther@tu-bs.de>,\nOliver Mielentz <o.mielentz@tu-bs.de>,\nMartin Wegner <mw@mroot.net>";
      homepage = "http://sep07.mroot.net/";
      url = "";
      synopsis = "An ad-hoc P2P chat program";
      description = "An ad-hoc chat program developed in the software development\ncourse at the TU-Braunschweig. Barracuda (by Stephan Friedrichs,\nHenning Günther, Oliver Mielentz and Martin Wegner) implements an\nad-hoc (p2p) network. On top of that, a chat application has been realised.\n\nJust like in IRC, the communication is organised in channels. A channel may be\nanonymous (the messages' origin is obscured), private (encrypted, only invited\nusers may join them) or public (free for all users).\n\nThe design is elaborated in a series of RFCs (see for example\n<http://tools.ietf.org/html/draft-strauss-p2p-chat>).\n\nThe Darcs repository can be found at <http://repos.mroot.net/sep07-adhoc>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Crypto)
          (hsPkgs.HaXml)
          (hsPkgs.utf8-string)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dataenc)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.gtk)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.random)
          (hsPkgs.regex-compat)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.pkcs1)
          (hsPkgs.heap)
          (hsPkgs.hsgnutls)
          (hsPkgs.xml-parsec)
          (hsPkgs.adhoc-network)
          ];
        };
      exes = {
        "Barracuda" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Crypto)
            (hsPkgs.HaXml)
            (hsPkgs.utf8-string)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.dataenc)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.gtk)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.random)
            (hsPkgs.regex-compat)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.pkcs1)
            (hsPkgs.heap)
            (hsPkgs.hsgnutls)
            (hsPkgs.xml-parsec)
            (hsPkgs.adhoc-network)
            ];
          };
        };
      };
    }