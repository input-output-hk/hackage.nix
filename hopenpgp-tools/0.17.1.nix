{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hopenpgp-tools";
          version = "0.17.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2012-2015 Clint Adams";
        maintainer = "Clint Adams <clint@debian.org>";
        author = "Clint Adams";
        homepage = "http://floss.scru.org/hopenpgp-tools";
        url = "";
        synopsis = "hOpenPGP-based command-line tools";
        description = "command-line tools for performing some OpenPGP-related operations";
        buildType = "Simple";
      };
      components = {
        exes = {
          hot = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.ansi-wl-pprint
              hsPkgs.array
              hsPkgs.binary
              hsPkgs.binary-conduit
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.errors
              hsPkgs.hOpenPGP
              hsPkgs.lens
              hsPkgs.monad-loops
              hsPkgs.openpgp-asciiarmor
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.wl-pprint-extras
              hsPkgs.yaml
            ];
          };
          hokey = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.ansi-wl-pprint
              hsPkgs.base16-bytestring
              hsPkgs.binary
              hsPkgs.binary-conduit
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.crypto-pubkey
              hsPkgs.cryptohash
              hsPkgs.directory
              hsPkgs.errors
              hsPkgs.hOpenPGP
              hsPkgs.ixset-typed
              hsPkgs.lens
              hsPkgs.monad-loops
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.time
              hsPkgs.time-locale-compat
              hsPkgs.transformers
              hsPkgs.wl-pprint-extras
              hsPkgs.wl-pprint-terminfo
              hsPkgs.yaml
            ];
          };
          hkt = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.ansi-wl-pprint
              hsPkgs.array
              hsPkgs.attoparsec
              hsPkgs.binary
              hsPkgs.binary-conduit
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.crypto-pubkey
              hsPkgs.directory
              hsPkgs.errors
              hsPkgs.fgl
              hsPkgs.graphviz
              hsPkgs.hOpenPGP
              hsPkgs.ixset-typed
              hsPkgs.lens
              hsPkgs.monad-loops
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.wl-pprint-extras
              hsPkgs.yaml
            ];
          };
        };
      };
    }