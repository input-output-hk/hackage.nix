{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sync-mht";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Emin Karayel <me@eminkarayel.de>";
        author = "Emin Karayel <me@eminkarayel.de>";
        homepage = "";
        url = "https://github.com/ekarayel/sync-mht";
        synopsis = "Fast incremental file transfer using Merke-Hash-Trees";
        description = "A command line tool that can be used to incrementally synchronize a directory hierarchy with a\nsecond one. It is using a Merkle-Hash-Tree to compare the folders, such that the synchronization\ntime and communication (round) complexity grows only logarithmically with the actual size of the\ndirectories (assuming the actual difference of the directories is small).\nThe communication happens through standard streams between parent and child processes, which can\neasily be routed through remote command execution tools, e.g.\nsync-mht -s foo/ -d bar\nwill synchronize the local folder bar/ with the local folder foo/, but\nsync-mht -s foo/ -d remote:/bar -r \"ssh fred@example.org sync-mht\"\nwill synchronize the folder bar/ in the home directory of the user fred on the host machine\nexample.org with the local folder foo/.\nIt is also possible to use it with docker, e.g.\nsync-mht -s foo/ -d remote:/bar -r \"docker run -i --volumes-from bar ekarayel/sync-mht sync-mht\"\nto synchronize the folder /bar (of the container named bar) with the local folder foo/.";
        buildType = "Simple";
      };
      components = {
        exes = {
          sync-mht = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.cryptohash
              hsPkgs.byteable
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.base16-bytestring
              hsPkgs.cereal
              hsPkgs.io-streams
              hsPkgs.transformers
              hsPkgs.mtl
            ];
          };
        };
      };
    }