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
        specVersion = "1.8";
        identifier = {
          name = "EtaMOO";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "© 2014–2015 Robert Leslie";
        maintainer = "Rob Leslie <rob@mars.org>";
        author = "Rob Leslie <rob@mars.org>";
        homepage = "http://verement.github.io/etamoo";
        url = "";
        synopsis = "A new implementation of the LambdaMOO server";
        description = "LambdaMOO is a network-accessible, multi-user, programmable, interactive\nsystem well-suited to the construction of text-based adventure games,\nconferencing systems, and other collaborative software.\n\nEtaMOO is an experimental multithreaded implementation of LambdaMOO in\nHaskell with anticipated ready support for 64-bit MOO integers and Unicode\nMOO strings. The implementation follows the specifications of the LambdaMOO\nProgrammer's Manual, and should be compatible with most LambdaMOO databases\nas of about version 1.8.3 of the LambdaMOO server code.\n\n/N.B./ This is (currently) incomplete software. It is not yet fully usable,\nalthough with further development it is hoped that it soon will be.";
        buildType = "Simple";
      };
      components = {
        exes = {
          etamoo = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.haskeline
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.old-locale
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
              hsPkgs.unix
              hsPkgs.unordered-containers
              hsPkgs.pureMD5
              hsPkgs.transformers
              hsPkgs.vector
            ];
            libs = [
              pkgs.pcre
            ] ++ pkgs.lib.optional (!system.isOsx) pkgs.crypt;
          };
        };
      };
    }