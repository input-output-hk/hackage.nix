{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ssh";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ganesh Sittampalam <ganesh@earth.li>";
      author = "Alex Suraci <suraci.alex@gmail.com>";
      homepage = "http://hub.darcs.net/ganesh/ssh";
      url = "";
      synopsis = "A pure-Haskell SSH server library.";
      description = "This a library for implementing your own servers that handle SSH\nrequests and authorization, etc. Similar to Python's Twisted Conch\nlibrary. It's used eg by darcsden to provide basic SSH access.";
      buildType = "Simple";
    };
    components = {
      "ssh" = {
        depends  = [
          (hsPkgs.asn1-data)
          (hsPkgs.base)
          (hsPkgs.base64-string)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.crypto-api)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.cryptohash-cryptoapi)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.integer-gmp)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.RSA)
          (hsPkgs.random)
          (hsPkgs.SHA)
          (hsPkgs.SimpleAES)
          (hsPkgs.split)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "ssh-test" = {
          depends  = [
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.libssh2)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.template-haskell)
            (hsPkgs.th-lift-instances)
            (hsPkgs.pseudomacros)
            (hsPkgs.containers)
            (hsPkgs.base)
            (hsPkgs.ssh)
          ];
        };
      };
    };
  }