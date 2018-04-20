{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ghc-events";
          version = "0.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Simon Marlow <marlowsd@gmail.com>";
        author = "Donnie Jones <donnie@darthik.com>,\nSimon Marlow <marlowsd@gmail.com>,\nPaul Bone <pbone@csse.unimelb.edu.au>,\nMischa Dieterle <dieterle@mathematik.uni-marburg.de>,\nThomas Horstmeyer <horstmey@mathematik.uni-marburg.de>,\nDuncan Coutts <duncan@well-typed.com>,\nNicolas Wu <nick@well-typed.com>,\nJost Berthold <berthold@diku.dk>\nMikolaj Konarski <mikolaj@well-typed.com>\nKarolis Velicka <karolis.velicka@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Library and tool for parsing .eventlog files from GHC";
        description = "Parses .eventlog files emitted by GHC 6.12.1 and later.\nIncludes the ghc-events tool permitting, in particular,\nto dump an event log file as text.";
        buildType = "Simple";
      };
      components = {
        ghc-events = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.array
          ];
        };
        exes = {
          ghc-events = {
            depends  = [
              hsPkgs.ghc-events
              hsPkgs.base
              hsPkgs.containers
            ];
          };
        };
        tests = {
          test-versions = {
            depends  = [
              hsPkgs.ghc-events
              hsPkgs.base
            ];
          };
          write-merge = {
            depends  = [
              hsPkgs.ghc-events
              hsPkgs.base
              hsPkgs.bytestring
            ];
          };
        };
      };
    }