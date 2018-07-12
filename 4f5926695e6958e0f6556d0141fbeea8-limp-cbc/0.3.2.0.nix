{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      embedded = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "limp-cbc";
          version = "0.3.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "amos.robinson@gmail.com";
        author = "Amos Robinson";
        homepage = "https://github.com/amosr/limp-cbc";
        url = "";
        synopsis = "bindings for integer linear programming solver Coin/CBC";
        description = "very simple binding to external solver, CBC.\nCBC is somewhat faster than GLPK, and also has a more permissive licence.\nrelies on coin/cbc version 2.8.6.";
        buildType = "Simple";
      };
      components = {
        "limp-cbc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.limp
          ];
          libs = if !_flags.embedded
            then [
              pkgs.Cbc
              pkgs.Clp
              pkgs.CbcSolver
              pkgs.Cgl
              pkgs.Osi
              pkgs.OsiCbc
              pkgs.OsiClp
              pkgs.OsiCommonTests
              pkgs.CoinUtils
              pkgs.CoinMP
              pkgs."stdc++"
            ]
            else [ pkgs."stdc++" ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.limp
              hsPkgs.limp-cbc
            ];
          };
        };
      };
    }