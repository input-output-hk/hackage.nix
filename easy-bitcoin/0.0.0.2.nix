{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "easy-bitcoin";
          version = "0.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "vwwv@correo.ugr.es";
        author = "Alejandro D.P.";
        homepage = "https://github.com/vwwv/easy-bitcoin";
        url = "";
        synopsis = "types and functions for bitcoin applications";
        description = "EasyBitcoin is a simple library providing types and class-instances for bitcoin related code;\nit also include an small set of functions to handle addresses, transactions and escrows.";
        buildType = "Simple";
      };
      components = {
        easy-bitcoin = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.postgresql-simple
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.base16-bytestring
            hsPkgs.aeson
            hsPkgs.byteable
            hsPkgs.deepseq
            hsPkgs.lens
            hsPkgs.cryptohash
          ];
        };
      };
    }