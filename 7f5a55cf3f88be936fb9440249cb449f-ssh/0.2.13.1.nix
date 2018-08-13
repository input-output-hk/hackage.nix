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
      specVersion = "1.6";
      identifier = {
        name = "ssh";
        version = "0.2.13.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Alex Suraci <suraci.alex@gmail.com>";
      homepage = "http://hub.darcs.net/simon/ssh";
      url = "";
      synopsis = "A pure-Haskell SSH server library.";
      description = "This a library for implementing your own servers that handle SSH\nrequests and authorization, etc. Similar to Python's Twisted Conch\nlibrary. It's used eg by darcsden to provide basic SSH access.\nThis package receives only basic maintenance; if you'd like to\ntake it over, please contact the current maintainer.";
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
    };
  }