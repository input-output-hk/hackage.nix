{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "multihash";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Luke Hoersten";
        maintainer = "luke@hoersten.org";
        author = "Luke Hoersten";
        homepage = "";
        url = "";
        synopsis = "Multihash library and CLI executable";
        description = "Multihash is a protocol for encoding the hash algorithm\nand digest length at the start of the digest.\nMore information available at https:\\/\\/github.com\\/jbenet\\/multihash\\/.\n\nBase32 encoding, Blake hashing, and file checking still to be added.\n";
        buildType = "Simple";
      };
      components = {
        "multihash" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base58-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cryptohash
            hsPkgs.hex
            hsPkgs.io-streams
          ];
        };
        exes = {
          "multihash" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.base58-bytestring
              hsPkgs.byteable
              hsPkgs.bytestring
              hsPkgs.cryptohash
              hsPkgs.hex
              hsPkgs.io-streams
              hsPkgs.multihash
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }