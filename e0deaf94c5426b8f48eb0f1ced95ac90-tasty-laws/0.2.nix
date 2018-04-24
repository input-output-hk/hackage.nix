{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-laws";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "j@dannynavarro.net";
        author = "Danny Navarro";
        homepage = "";
        url = "";
        synopsis = "Test common laws";
        description = "Preassembled 'tasty' runners for property testing 'Monoid', 'Functor',\n'Applicative' and 'Monad' laws.";
        buildType = "Simple";
      };
      components = {
        tasty-laws = {
          depends  = ([
            hsPkgs.base
            hsPkgs.smallcheck
            hsPkgs.smallcheck-laws
            hsPkgs.smallcheck-series
            hsPkgs.tasty
            hsPkgs.tasty-smallcheck
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") hsPkgs.transformers) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") hsPkgs.tagged;
        };
        tests = {
          tasty = {
            depends  = [
              hsPkgs.base
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.smallcheck-laws
              hsPkgs.tasty-laws
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") hsPkgs.tagged;
          };
        };
      };
    }