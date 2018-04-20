{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
      64bit = false;
      outbound-network = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "EtaMOO";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "© 2014–2016 Robert Leslie";
        maintainer = "Rob Leslie <rob@mars.org>";
        author = "Rob Leslie <rob@mars.org>";
        homepage = "http://verement.github.io/etamoo";
        url = "";
        synopsis = "A new implementation of the LambdaMOO server";
        description = "LambdaMOO is a network-accessible, multi-user, programmable, interactive\nsystem well-suited to the construction of text-based adventure games,\nconferencing systems, and other collaborative software.\n\nEtaMOO is an experimental multithreaded implementation of LambdaMOO in\nHaskell with LMDB-backed persistence and anticipated ready support for\nUnicode MOO strings and 64-bit MOO integers. The implementation follows the\nspecifications of the LambdaMOO Programmer's Manual, and should be\ncompatible with most LambdaMOO databases as of about version 1.8.3 of the\nLambdaMOO server code.\n\n/N.B./ This software is still under development and not fully complete.";
        buildType = "Simple";
      };
      components = {
        exes = {
          etamoo = {
            depends  = [
              hsPkgs.array
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.hashable
              hsPkgs.haskeline
              hsPkgs.memory
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.parsec
              hsPkgs.pipes
              hsPkgs.pipes-bytestring
              hsPkgs.pipes-concurrency
              hsPkgs.pipes-network
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.stm-chans
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.unordered-containers
              hsPkgs.vcache
              hsPkgs.vector
            ];
            libs = pkgs.lib.optional (!system.isOsx) pkgs.crypt;
            pkgconfig = [
              pkgconfPkgs.libpcre
            ];
          };
        };
      };
    }