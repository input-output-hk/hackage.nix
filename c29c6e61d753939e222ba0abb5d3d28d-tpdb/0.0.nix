{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tpdb";
          version = "0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Johannes Waldmann";
        author = "Johannes Waldmann";
        homepage = "";
        url = "";
        synopsis = "Data Type for Rewriting Systems";
        description = "The package defines data types and parsers for rewriting systems,\nas used in the Termination Competitions.\nFor syntax and semantics specification,\nsee <http://www.termination-portal.org/wiki/TPDB>";
        buildType = "Simple";
      };
      components = {
        tpdb = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.pretty
            hsPkgs.parsec
          ];
        };
        tests = {
          XML = {};
          TRS = {};
          SRS = {};
        };
      };
    }