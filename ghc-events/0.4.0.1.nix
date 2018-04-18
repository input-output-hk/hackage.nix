{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ghc-events";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Simon Marlow <marlowsd@gmail.com>";
        author = "Donnie Jones <donnie@darthik.com>,\nSimon Marlow <marlowsd@gmail.com>,\nPaul Bone <pbone@csse.unimelb.edu.au>,\nDuncan Coutts <duncan@well-typed.com>\nNicolas Wu <nick@well-typed.com>";
        homepage = "";
        url = "";
        synopsis = "Library and tool for parsing .eventlog files from GHC";
        description = "Parses @.eventlog@ files emitted by GHC 6.12.1 and later.\nIncludes the @ghc-events@ tool which dumps an event log file\nas text.\n\nChanges in 0.4.0.1:\n\n* compiles with GHC 7.6.1";
        buildType = "Simple";
      };
      components = {
        ghc-events = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.array
          ];
        };
        exes = {
          ghc-events = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.array
            ];
          };
        };
        tests = {
          test-versions = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.array
            ];
          };
        };
      };
    }