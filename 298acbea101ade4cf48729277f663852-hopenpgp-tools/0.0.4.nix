{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hopenpgp-tools";
          version = "0.0.4";
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
          "hot" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.conduit
              hsPkgs.hOpenPGP
              hsPkgs.openpgp-asciiarmor
              hsPkgs.optparse-applicative
              hsPkgs.transformers
            ];
          };
          "hokey" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-wl-pprint
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.conduit
              hsPkgs.crypto-pubkey
              hsPkgs.directory
              hsPkgs.hOpenPGP
              hsPkgs.ixset
              hsPkgs.lens
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
          "hkt" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.conduit
              hsPkgs.crypto-pubkey
              hsPkgs.directory
              hsPkgs.hOpenPGP
              hsPkgs.ixset
              hsPkgs.lens
              hsPkgs.optparse-applicative
              hsPkgs.transformers
            ];
          };
        };
      };
    }