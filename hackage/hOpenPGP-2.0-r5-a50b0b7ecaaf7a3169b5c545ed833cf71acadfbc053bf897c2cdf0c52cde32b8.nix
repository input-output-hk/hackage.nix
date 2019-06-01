{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hOpenPGP"; version = "2.0"; };
      license = "MIT";
      copyright = "2012-2015  Clint Adams";
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
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib)
          (hsPkgs.binary)
          (hsPkgs.binary-conduit)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.crypto-cipher-types)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.crypto-random)
          (hsPkgs.cryptocipher)
          (hsPkgs.cryptohash)
          (hsPkgs.data-default-class)
          (hsPkgs.errors)
          (hsPkgs.hashable)
          (hsPkgs.incremental-parser)
          (hsPkgs.ixset)
          (hsPkgs.lens)
          (hsPkgs.monad-loops)
          (hsPkgs.nettle)
          (hsPkgs.newtype)
          (hsPkgs.old-locale)
          (hsPkgs.openpgp-asciiarmor)
          (hsPkgs.resourcet)
          (hsPkgs.securemem)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.wl-pprint-extras)
          (hsPkgs.zlib)
          ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.hOpenPGP)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.byteable)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib)
            (hsPkgs.binary)
            (hsPkgs.binary-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.crypto-random)
            (hsPkgs.cryptocipher)
            (hsPkgs.cryptohash)
            (hsPkgs.data-default-class)
            (hsPkgs.errors)
            (hsPkgs.hashable)
            (hsPkgs.incremental-parser)
            (hsPkgs.ixset)
            (hsPkgs.lens)
            (hsPkgs.monad-loops)
            (hsPkgs.nettle)
            (hsPkgs.newtype)
            (hsPkgs.old-locale)
            (hsPkgs.securemem)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.wl-pprint-extras)
            (hsPkgs.zlib)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.resourcet)
            ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs.hOpenPGP)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bifunctors)
            (hsPkgs.byteable)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib)
            (hsPkgs.binary)
            (hsPkgs.binary-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.crypto-random)
            (hsPkgs.cryptocipher)
            (hsPkgs.cryptohash)
            (hsPkgs.data-default-class)
            (hsPkgs.errors)
            (hsPkgs.hashable)
            (hsPkgs.incremental-parser)
            (hsPkgs.ixset)
            (hsPkgs.lens)
            (hsPkgs.monad-loops)
            (hsPkgs.nettle)
            (hsPkgs.newtype)
            (hsPkgs.old-locale)
            (hsPkgs.openpgp-asciiarmor)
            (hsPkgs.resourcet)
            (hsPkgs.securemem)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.wl-pprint-extras)
            (hsPkgs.zlib)
            (hsPkgs.criterion)
            ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
          };
        };
      };
    }