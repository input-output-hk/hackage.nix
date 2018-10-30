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
      specVersion = "1.8";
      identifier = {
        name = "imm";
        version = "1.3.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "chahine.moreau@gmail.com";
      author = "kamaradclimber, chahine.moreau@gmail.com";
      homepage = "https://github.com/k0ral/imm";
      url = "";
      synopsis = "Execute arbitrary actions for each unread element of RSS/Atom feeds";
      description = "Cf README file";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.atom-conduit)
          (hsPkgs.base)
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
          (hsPkgs.lifted-base)
          (hsPkgs.microlens)
          (hsPkgs.mime-mail)
          (hsPkgs.monad-time)
          (hsPkgs.monoid-subclasses)
          (hsPkgs.mono-traversable)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.opml-conduit)
          (hsPkgs.optparse-applicative)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.rss-conduit)
          (hsPkgs.safe-exceptions)
          (hsPkgs.stm)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.streaming-with)
          (hsPkgs.streamly)
          (hsPkgs.text)
          (hsPkgs.transformers)
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
      exes = {
        "imm" = {
          depends  = [
            (hsPkgs.imm)
            (hsPkgs.base)
          ];
        };
      };
    };
  }