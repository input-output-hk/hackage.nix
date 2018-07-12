{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tpdb";
          version = "1.2.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Johannes Waldmann";
        author = "Alexander Bau, Johannes Waldmann";
        homepage = "https://github.com/jwaldmann/haskell-tpdb";
        url = "";
        synopsis = "Data Type for Rewriting Systems";
        description = "The package defines data types and parsers for rewriting systems\nand termination proofs,\nas used in the Termination Competitions.\nFor syntax and semantics specification,\nsee <http://www.termination-portal.org/wiki/TPDB>";
        buildType = "Simple";
      };
      components = {
        "tpdb" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.wl-pprint-text
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.HaXml
            hsPkgs.filepath
            hsPkgs.hashable
          ];
        };
        tests = {
          "XML" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tpdb
            ];
          };
          "TRS" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tpdb
            ];
          };
          "TRS_02" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tpdb
            ];
          };
          "SRS" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tpdb
            ];
          };
          "Speed" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tpdb
              hsPkgs.HaXml
              hsPkgs.bytestring
              hsPkgs.pretty
            ];
          };
        };
      };
    }