{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ssh";
          version = "0.2.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alex Suraci <suraci.alex@gmail.com>";
        author = "Alex Suraci <suraci.alex@gmail.com>";
        homepage = "http://darcsden.com/alex/ssh";
        url = "";
        synopsis = "A pure-Haskell SSH server library.";
        description = "This package was split from darcsden into its own project; documentation\nis lacking, but you can find example usage here:\n<http://darcsden.com/alex/darcsden/browse/src/SSHServer.hs>.\nThis is not a standalone SSH server - it is intended to be used as\na library for implementing your own servers that handle requests and\nauthorization, etc. Similar to Python's Twisted Conch library.";
        buildType = "Simple";
      };
      components = {
        ssh = {
          depends  = [
            hsPkgs.asn1-data
            hsPkgs.base
            hsPkgs.base64-string
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.crypto-api
            hsPkgs.crypto-pubkey-types
            hsPkgs.cryptohash
            hsPkgs.HsOpenSSL
            hsPkgs.network
            hsPkgs.process
            hsPkgs.RSA
            hsPkgs.random
            hsPkgs.SHA
            hsPkgs.SimpleAES
            hsPkgs.split
            hsPkgs.transformers
          ];
        };
      };
    }