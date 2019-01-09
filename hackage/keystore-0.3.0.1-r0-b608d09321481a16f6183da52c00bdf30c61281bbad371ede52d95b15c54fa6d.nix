{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { hpc = false; stacktrace = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "keystore"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "http://github.com/cdornan/keystore";
      url = "";
      synopsis = "Managing stores of secret things";
      description = "Provides a program, an IO-based API and its underlying functional API for\nmanaging a multi-level JSON-encoded store of encrypted and hashed symmetric\nand public keypairs and associated utilities for encrypting and signing\nfiles.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.api-tools)
          (hsPkgs.asn1-types)
          (hsPkgs.asn1-encoding)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.crypto-random)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.cipher-aes)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.pbkdf)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.Cabal)
          (hsPkgs.QuickCheck)
          (hsPkgs.array)
          (hsPkgs.case-insensitive)
          (hsPkgs.lens)
          (hsPkgs.old-locale)
          (hsPkgs.regex-compat-tdfa)
          (hsPkgs.safecopy)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "ks" = { depends = [ (hsPkgs.base) (hsPkgs.keystore) ]; };
        "deploy" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.keystore)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }