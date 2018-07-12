{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "imm";
          version = "1.0.0.0";
        };
        license = "LicenseRef-OtherLicense";
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
        "imm" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.atom-conduit
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.chunked-data
            hsPkgs.comonad
            hsPkgs.compdata
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.conduit-parse
            hsPkgs.connection
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.dyre
            hsPkgs.exceptions
            hsPkgs.fast-logger
            hsPkgs.filepath
            hsPkgs.free
            hsPkgs.hashable
            hsPkgs.HaskellNet
            hsPkgs.HaskellNet-SSL
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.mime-mail
            hsPkgs.monoid-subclasses
            hsPkgs.mono-traversable
            hsPkgs.network
            hsPkgs.opml-conduit
            hsPkgs.optparse-applicative
            hsPkgs.rainbow
            hsPkgs.rainbox
            hsPkgs.rss-conduit
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.timerep
            hsPkgs.tls
            hsPkgs.uri-bytestring
            hsPkgs.xml
            hsPkgs.xml-conduit
            hsPkgs.ansi-wl-pprint
          ];
        };
        exes = {
          "imm" = {
            depends  = [
              hsPkgs.imm
              hsPkgs.base
              hsPkgs.free
            ];
          };
        };
      };
    }