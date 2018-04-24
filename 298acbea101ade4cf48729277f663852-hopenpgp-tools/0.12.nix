{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hopenpgp-tools";
          version = "0.12";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2012-2014 Clint Adams";
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
              hsPkgs.ansi-wl-pprint
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.errors
              hsPkgs.hOpenPGP
              hsPkgs.lens
              hsPkgs.openpgp-asciiarmor
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.transformers
            ];
            build-tools = [
              hsPkgs.alex
              hsPkgs.happy
            ];
          };
          hokey = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.ansi-wl-pprint
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.crypto-pubkey
              hsPkgs.cryptohash
              hsPkgs.directory
              hsPkgs.errors
              hsPkgs.hOpenPGP
              hsPkgs.ixset
              hsPkgs.lens
              hsPkgs.old-locale
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
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
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.crypto-pubkey
              hsPkgs.directory
              hsPkgs.fgl
              hsPkgs.graphviz
              hsPkgs.hOpenPGP
              hsPkgs.ixset
              hsPkgs.lens
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.yaml
            ];
            build-tools = [
              hsPkgs.alex
              hsPkgs.happy
            ];
          };
        };
      };
    }