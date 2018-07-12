{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "sbvPlugin";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Levent Erkok (erkokl@gmail.com)";
        author = "Levent Erkok";
        homepage = "http://github.com/LeventErkok/sbvPlugin";
        url = "";
        synopsis = "Analyze Haskell expressions using SBV/SMT";
        description = "GHC plugin for analyzing expressions using SMT solvers, based\non the <http://hackage.haskell.org/package/sbv SBV> package.\n\nSee \"Data.SBV.Plugin\" for a quick example.";
        buildType = "Simple";
      };
      components = {
        "sbvPlugin" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.ghc-prim
            hsPkgs.containers
            hsPkgs.sbv
            hsPkgs.mtl
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "sbvPluginTests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.sbvPlugin
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
            ];
          };
        };
      };
    }