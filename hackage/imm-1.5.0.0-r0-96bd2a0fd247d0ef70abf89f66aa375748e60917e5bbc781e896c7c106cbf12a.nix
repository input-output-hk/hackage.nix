{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "imm"; version = "1.5.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "koral <koral@mailoo.org>";
      author = "kamaradclimber, koral";
      homepage = "https://github.com/k0ral/imm";
      url = "";
      synopsis = "Execute arbitrary actions for each unread element of RSS/Atom feeds";
      description = "Cf README file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.atom-conduit)
          (hsPkgs.base-noprelude)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.connection)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          (hsPkgs.fast-logger)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.HaskellNet)
          (hsPkgs.HaskellNet-SSL)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.microlens)
          (hsPkgs.mime-mail)
          (hsPkgs.monad-time)
          (hsPkgs.monoid-subclasses)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.opml-conduit)
          (hsPkgs.optparse-applicative)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.refined)
          (hsPkgs.relude)
          (hsPkgs.rss-conduit)
          (hsPkgs.safe-exceptions)
          (hsPkgs.stm)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.streaming-with)
          (hsPkgs.streamly)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.tls)
          (hsPkgs.uri-bytestring)
          (hsPkgs.xml)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          ];
        };
      exes = { "imm" = { depends = [ (hsPkgs.imm) (hsPkgs.base) ]; }; };
      };
    }