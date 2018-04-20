{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "NTRU";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tlevine@cyberpointllc.com";
        author = "Theo Levine";
        homepage = "";
        url = "";
        synopsis = "NTRU Cryptographic Library";
        description = "A Haskell implementation of the NTRU cryptographic system, following the IEEE Standard Specification for Public Key Crpytographic Techniques Based on Hard Problems over Lattices";
        buildType = "Simple";
      };
      components = {
        NTRU = {
          depends  = [
            hsPkgs.base
            hsPkgs.SHA
            hsPkgs.split
            hsPkgs.containers
            hsPkgs.crypto-api
            hsPkgs.random
            hsPkgs.polynomial
            hsPkgs.arithmoi
            hsPkgs.bytestring
          ];
        };
      };
    }