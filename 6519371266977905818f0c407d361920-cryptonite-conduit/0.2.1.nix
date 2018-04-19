{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cryptonite-conduit";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/haskell-crypto/cryptonite-conduit";
        url = "";
        synopsis = "cryptonite conduit";
        description = "Conduit bridge for cryptonite\n\nFor now only provide a conduit version for hash and hmac, but\nwith contribution, this could provide cipher conduits too,\nand probably other things.";
        buildType = "Simple";
      };
      components = {
        cryptonite-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.cryptonite
            hsPkgs.exceptions
            hsPkgs.memory
            hsPkgs.resourcet
            hsPkgs.transformers
          ];
        };
        tests = {
          cryptonite-conduit-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.cryptonite
              hsPkgs.cryptonite-conduit
              hsPkgs.memory
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }