{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      includemd5 = true;
      usebinary = true;
      oldbase = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "RSA";
          version = "1.0.6.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Wick <awick@galois.com>";
        author = "Adam Wick <awick@galois.com>";
        homepage = "";
        url = "";
        synopsis = "Implementation of RSA, using the padding schemes of PKCS#1 v2.1.";
        description = "This library implements the RSA encryption and signature\nalgorithms for arbitrarily-sized ByteStrings. While the\nimplementations work, they are not necessarily the fastest ones\non the planet. Particularly key generation. The algorithms\nincluded are based of RFC 3447, or the Public-Key Cryptography\nStandard for RSA, version 2.1 (a.k.a, PKCS#1 v2.1).";
        buildType = "Simple";
      };
      components = {
        RSA = {
          depends  = (([
            hsPkgs.bytestring
            hsPkgs.random
          ] ++ [
            hsPkgs.base
            hsPkgs.SHA
          ]) ++ pkgs.lib.optional _flags.usebinary hsPkgs.binary) ++ [
            hsPkgs.pureMD5
          ];
        };
        exes = {
          test_rsa = {
            depends  = pkgs.lib.optionals _flags.test ([
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
            ] ++ [
              hsPkgs.base
              hsPkgs.SHA
            ]);
          };
        };
      };
    }