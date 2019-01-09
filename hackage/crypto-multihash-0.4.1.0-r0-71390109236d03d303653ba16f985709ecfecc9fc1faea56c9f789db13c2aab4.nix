{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "crypto-multihash"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Marcello Seri";
      maintainer = "marcello.seri@gmail.com";
      author = "Marcello Seri";
      homepage = "https://github.com/mseri/crypto-multihash#crypto-multihash";
      url = "";
      synopsis = "Multihash library on top of cryptonite crypto library";
      description = "Multihash is a protocol for encoding the hash algorithm\nand digest length at the start of the digest, see the official\n<https://github.com/jbenet/multihash/ multihash github>.\nUsage and additional informations are on README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base58-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.string-conversions)
          ];
        };
      exes = {
        "mh" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.crypto-multihash)
            ];
          };
        };
      tests = {
        "crypto-multihash-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.crypto-multihash)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }