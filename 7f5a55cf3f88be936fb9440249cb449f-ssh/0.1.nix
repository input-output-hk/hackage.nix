{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ssh";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "i.am@toogeneric.com";
        author = "Alex Suraci";
        homepage = "http://darcsden.com/alex/ssh";
        url = "";
        synopsis = "A pure-Haskell SSH server library.";
        description = "This package was split from darcsden into its own project; documentation is\nlacking, but you can find example usage here:\n<http://darcsden.com/alex/darcsden/browse/Main.hs>.\nThis is not a standalone SSH server - it is intended to be used as\na library for implementing your own servers that handle requests and\nauthorization, etc. Similar to Python's Twisted Conch library.";
        buildType = "Simple";
      };
      components = {
        "ssh" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.Crypto
            hsPkgs.containers
            hsPkgs.HsOpenSSL
            hsPkgs.network
            hsPkgs.process
            hsPkgs.RSA
            hsPkgs.random
            hsPkgs.SHA
            hsPkgs.split
            hsPkgs.transformers
          ];
        };
      };
    }