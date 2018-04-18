{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-anonymous-tor";
          version = "0.9.2";
        };
        license = "MIT";
        copyright = "(c) 2014 Leon Mergen";
        maintainer = "leon@solatis.com";
        author = "Leon Mergen";
        homepage = "http://www.leonmergen.com/opensource.html";
        url = "";
        synopsis = "Haskell API for Tor anonymous networking";
        description = "This library providess an API that wraps around the Tor control port\nto create ad-hoc hidden services";
        buildType = "Simple";
      };
      components = {
        network-anonymous-tor = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.network
            hsPkgs.network-simple
            hsPkgs.socks
            hsPkgs.attoparsec
            hsPkgs.network-attoparsec
            hsPkgs.exceptions
            hsPkgs.hexstring
            hsPkgs.base32string
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
        exes = {
          tor-relay = {
            depends  = [
              hsPkgs.base
              hsPkgs.exceptions
              hsPkgs.network
              hsPkgs.network-simple
              hsPkgs.splice
              hsPkgs.network-anonymous-tor
            ];
          };
        };
        tests = {
          test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.exceptions
              hsPkgs.transformers
              hsPkgs.network
              hsPkgs.network-simple
              hsPkgs.socks
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.base32string
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.hspec-attoparsec
              hsPkgs.hspec-expectations
              hsPkgs.network-anonymous-tor
            ];
          };
        };
      };
    }