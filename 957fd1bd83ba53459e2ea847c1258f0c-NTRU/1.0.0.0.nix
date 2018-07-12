{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "NTRU";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014, CyberPoint International, LLC";
        maintainer = "opensource@cyberpointllc.com";
        author = "Theo Levine, Tom Cornelius, Elizabeth Hughes, CyberPoint International LLC.";
        homepage = "";
        url = "";
        synopsis = "NTRU Cryptography";
        description = "A Haskell implementation of the NTRU cryptographic system, following the IEEE Standard Specification for Public Key Crpytographic Techniques Based on Hard Problems over Lattices (IEEE Std 1363.1-2008)";
        buildType = "Simple";
      };
      components = {
        "NTRU" = {
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