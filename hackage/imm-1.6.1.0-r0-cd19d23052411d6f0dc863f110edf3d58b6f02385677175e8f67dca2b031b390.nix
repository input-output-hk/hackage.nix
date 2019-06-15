{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "imm"; version = "1.6.1.0"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "chahine.moreau@gmail.com";
      author = "kamaradclimber, koral";
      homepage = "https://github.com/k0ral/imm";
      url = "";
      synopsis = "Execute arbitrary callbacks for each element of RSS/Atom feeds";
      description = "Cf README file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base-noprelude)
          (hsPkgs.relude)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.atom-conduit)
          (hsPkgs.binary)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.dhall)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.microlens)
          (hsPkgs.monad-time)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.refined)
          (hsPkgs.rss-conduit)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.tls)
          (hsPkgs.uri-bytestring)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          ];
        };
      exes = {
        "imm" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.relude)
            (hsPkgs.imm)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.atom-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.connection)
            (hsPkgs.containers)
            (hsPkgs.dhall)
            (hsPkgs.directory)
            (hsPkgs.fast-logger)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.opml-conduit)
            (hsPkgs.optparse-applicative)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.refined)
            (hsPkgs.rss-conduit)
            (hsPkgs.safe-exceptions)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.streaming-with)
            (hsPkgs.text)
            (hsPkgs.typed-process)
            (hsPkgs.uri-bytestring)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-types)
            ];
          };
        "imm-writefile" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.relude)
            (hsPkgs.imm)
            (hsPkgs.aeson)
            (hsPkgs.atom-conduit)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.prettyprinter)
            (hsPkgs.rss-conduit)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.streaming-with)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.uri-bytestring)
            ];
          };
        "imm-sendmail" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.relude)
            (hsPkgs.imm)
            (hsPkgs.aeson)
            (hsPkgs.atom-conduit)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HaskellNet)
            (hsPkgs.HaskellNet-SSL)
            (hsPkgs.mime-mail)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.prettyprinter)
            (hsPkgs.refined)
            (hsPkgs.rss-conduit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.uri-bytestring)
            ];
          };
        };
      };
    }