{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hOpenPGP"; version = "0.9.1"; };
      license = "MIT";
      copyright = "2012-2013  Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/hOpenPGP/";
      url = "";
      synopsis = "native Haskell implementation of OpenPGP (RFC4880)";
      description = "native Haskell implementation of OpenPGP (RFC4880)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib)
          (hsPkgs.cereal)
          (hsPkgs.cereal-conduit)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.crypto-cipher-types)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.cryptocipher)
          (hsPkgs.cryptohash)
          (hsPkgs.data-default)
          (hsPkgs.ixset)
          (hsPkgs.lens)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.nettle)
          (hsPkgs.openpgp-asciiarmor)
          (hsPkgs.securemem)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.zlib)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.hOpenPGP)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib)
            (hsPkgs.cereal)
            (hsPkgs.cereal-conduit)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.cryptocipher)
            (hsPkgs.cryptohash)
            (hsPkgs.data-default)
            (hsPkgs.ixset)
            (hsPkgs.lens)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.nettle)
            (hsPkgs.securemem)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.zlib)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.resourcet)
            ];
          };
        };
      };
    }