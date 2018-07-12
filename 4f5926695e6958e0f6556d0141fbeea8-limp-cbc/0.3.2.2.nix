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
          version = "0.3.2.2";
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
          libs = [ pkgs."stdc++" ];
          pkgconfig = pkgs.lib.optional (!_flags.embedded) pkgconfPkgs.cbc;
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
        tests = {
          "examples" = {
            depends  = [
              hsPkgs.base
              hsPkgs.limp
              hsPkgs.limp-cbc
            ];
          };
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.limp
              hsPkgs.limp-cbc
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }