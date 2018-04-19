{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wyvern";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel@wagner-home.com";
        author = "Daniel Wagner";
        homepage = "http://dmwit.com/wyvern";
        url = "";
        synopsis = "An autoresponder for Dragon Go Server.";
        description = "Wyvern will play pre-planned sequences for you on the\nDragon Go Server.  Just feed it some SGF files outlining\nyour plan, and it will make moves in any games that are\nwaiting.";
        buildType = "Simple";
      };
      components = {
        exes = {
          wyvern = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.ConfigFile
              hsPkgs.containers
              hsPkgs.dgs
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.sgf
              hsPkgs.split
            ];
          };
        };
      };
    }