{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hOpenPGP"; version = "2.8"; };
      license = "MIT";
      copyright = "2012-2019  Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "https://salsa.debian.org/clint/hOpenPGP";
      url = "";
      synopsis = "native Haskell implementation of OpenPGP (RFC4880)";
      description = "native Haskell implementation of OpenPGP (RFC4880), plus Camellia (RFC5581), plus ECC (RFC6637)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.asn1-encoding)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib)
          (hsPkgs.binary)
          (hsPkgs.binary-conduit)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.crypto-cipher-types)
          (hsPkgs.errors)
          (hsPkgs.hashable)
          (hsPkgs.incremental-parser)
          (hsPkgs.ixset-typed)
          (hsPkgs.lens)
          (hsPkgs.memory)
          (hsPkgs.monad-loops)
          (hsPkgs.nettle)
          (hsPkgs.newtype)
          (hsPkgs.openpgp-asciiarmor)
          (hsPkgs.prettyprinter)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          (hsPkgs.zlib)
          ] ++ (if flags.network-uri
          then [ (hsPkgs.network-uri) ]
          else [ (hsPkgs.network-uri) (hsPkgs.network) ]);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.hOpenPGP)
            (hsPkgs.aeson)
            (hsPkgs.asn1-encoding)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib)
            (hsPkgs.binary)
            (hsPkgs.binary-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.errors)
            (hsPkgs.hashable)
            (hsPkgs.incremental-parser)
            (hsPkgs.ixset-typed)
            (hsPkgs.lens)
            (hsPkgs.memory)
            (hsPkgs.monad-loops)
            (hsPkgs.nettle)
            (hsPkgs.newtype)
            (hsPkgs.prettyprinter)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.transformers)
            (hsPkgs.unliftio-core)
            (hsPkgs.unordered-containers)
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
            (hsPkgs.base16-bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib)
            (hsPkgs.binary)
            (hsPkgs.binary-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.errors)
            (hsPkgs.hashable)
            (hsPkgs.incremental-parser)
            (hsPkgs.ixset-typed)
            (hsPkgs.lens)
            (hsPkgs.memory)
            (hsPkgs.monad-loops)
            (hsPkgs.nettle)
            (hsPkgs.newtype)
            (hsPkgs.openpgp-asciiarmor)
            (hsPkgs.prettyprinter)
            (hsPkgs.resourcet)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.transformers)
            (hsPkgs.unliftio-core)
            (hsPkgs.unordered-containers)
            (hsPkgs.zlib)
            (hsPkgs.criterion)
            ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
          };
        };
      };
    }