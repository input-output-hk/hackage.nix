{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "debug-me";
          version = "1.20170810";
        };
        license = "AGPL-3.0-only";
        copyright = "2017 Joey Hess";
        maintainer = "Joey Hess <joey@kitenet.net>";
        author = "Joey Hess";
        homepage = "https://debug-me.branchable.com/";
        url = "";
        synopsis = "secure remote debugging";
        description = "Debugging a problem over email/irc/BTS is slow, tedious, and hard. The developer\nneeds to see your problem to understand it. Debug-me aims to make debugging\nfast, fun, and easy, by letting the developer access your computer remotely,\nso they can immediately see and interact with the problem. Making your\nproblem their problem gets it fixed fast.\n\nA debug-me session is logged and signed with the developer's GnuPG\nkey, producing a chain of evidence of what they saw and what they did.\nSo the developer's good reputation is leveraged to make debug-me secure.\nIf you trust a developer to ship software to your computer,\nyou can trust them to debug-me.\n\nWhen you start debug-me without any options, it will connect to a debug-me\nserver, and print out an url that you can give to the developer to get\nthem connected to you. Then debug-me will show you their GnuPG key and who\nhas signed it, and will let you know if they are a known developer\nof software on your computer. If the developer has a good reputation,\nyou can proceed to let them type into your console in a debug-me session.\nOnce the session is done, the debug-me server will email you the signed\nevidence of what the developer did in the session.\n\nIf the developer did do something bad, you'd have proof that they cannot\nbe trusted, which you can share with the world. Knowing that is the case\nwill keep most developers honest.";
        buildType = "Custom";
      };
      components = {
        exes = {
          debug-me = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.bytestring
              hsPkgs.cryptonite
              hsPkgs.unix
              hsPkgs.process
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.stm-chans
              hsPkgs.posix-pty
              hsPkgs.terminal-size
              hsPkgs.aeson
              hsPkgs.sandi
              hsPkgs.text
              hsPkgs.optparse-applicative
              hsPkgs.graphviz
              hsPkgs.time
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.unbounded-delays
              hsPkgs.memory
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.http-types
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.websockets
              hsPkgs.wai-websockets
              hsPkgs.uuid
              hsPkgs.protobuf
              hsPkgs.cereal
              hsPkgs.utf8-string
              hsPkgs.network-uri
              hsPkgs.mime-mail
              hsPkgs.time
            ];
          };
        };
      };
    }