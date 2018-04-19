{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tpdb";
          version = "0.6.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Johannes Waldmann";
        author = "Johannes Waldmann";
        homepage = "";
        url = "";
        synopsis = "Data Type for Rewriting Systems";
        description = "The package defines data types and parsers for rewriting systems\nand termination proofs,\nas used in the Termination Competitions.\nFor syntax and semantics specification,\nsee <http://www.termination-portal.org/wiki/TPDB>";
        buildType = "Simple";
      };
      components = {
        tpdb = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.pretty
            hsPkgs.parsec
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.HaXml
            hsPkgs.filepath
          ];
        };
        exes = {
          Compressor = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.pretty
              hsPkgs.hxt
              hsPkgs.parsec
            ];
          };
        };
        tests = {
          XML = {
            depends  = [
              hsPkgs.base
              hsPkgs.hxt
              hsPkgs.pretty
              hsPkgs.parsec
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.HaXml
            ];
          };
          TRS = {
            depends  = [
              hsPkgs.base
              hsPkgs.hxt
              hsPkgs.pretty
              hsPkgs.parsec
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.HaXml
            ];
          };
          SRS = {
            depends  = [
              hsPkgs.base
              hsPkgs.hxt
              hsPkgs.pretty
              hsPkgs.parsec
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.HaXml
            ];
          };
        };
      };
    }