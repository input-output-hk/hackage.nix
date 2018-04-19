{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hackport";
          version = "0.5.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Gentoo Haskell team <haskell@gentoo.org>";
        author = "Henning Günther, Duncan Coutts, Lennart Kolmodin";
        homepage = "";
        url = "";
        synopsis = "Hackage and Portage integration tool";
        description = "A command line tool to manage an overlay of Gentoo ebuilds\nthat are generated from a hackage repo of Cabal packages.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hackport = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.extensible-exceptions
              hsPkgs.filepath
              hsPkgs.HTTP
              hsPkgs.MissingH
              hsPkgs.network
              hsPkgs.network-uri
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.old-locale
              hsPkgs.regex-compat
              hsPkgs.split
              hsPkgs.tar
              hsPkgs.time
              hsPkgs.zlib
              hsPkgs.xml
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.unix
              hsPkgs.async
              hsPkgs.base16-bytestring
              hsPkgs.base64-bytestring
              hsPkgs.cryptohash
              hsPkgs.ed25519
              hsPkgs.ghc-prim
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.transformers
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.old-time
              hsPkgs.bytestring
            ];
          };
        };
        tests = {
          test-resolve-category = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.deepseq
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.extensible-exceptions
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.split
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.xml
            ];
          };
          test-print-deps = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.deepseq
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.extensible-exceptions
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.xml
            ];
          };
          test-normalize-deps = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.deepseq
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.extensible-exceptions
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.xml
            ];
          };
        };
      };
    }