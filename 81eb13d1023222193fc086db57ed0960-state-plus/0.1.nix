{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "state-plus";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Boris Sukholitko, 2012";
        maintainer = "boriss@gmail.com";
        author = "Boris Sukholitko";
        homepage = "";
        url = "";
        synopsis = "MonadPlus for StateT";
        description = "Implements MonadPlus with left catch (MonadOr) for StateT.";
        buildType = "Simple";
      };
      components = {
        state-plus = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
        tests = {
          Main = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.mtl
              hsPkgs.state-plus
              hsPkgs.checkers
            ];
          };
        };
      };
    }