{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "smallcheck-laws";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "j@dannynavarro.net";
        author = "Danny Navarro";
        homepage = "http://github.com/jdnavarro/smallcheck-laws";
        url = "";
        synopsis = "SmallCheck properties for common laws";
        description = "'smallcheck' properties for testing 'Monoid', 'Functor', 'Applicative' and\n'Monad' laws.";
        buildType = "Simple";
      };
      components = {
        smallcheck-laws = {
          depends  = ([
            hsPkgs.base
            hsPkgs.smallcheck
            hsPkgs.smallcheck-series
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers) ++ pkgs.lib.optional compiler.isGhc hsPkgs.tagged;
        };
      };
    }