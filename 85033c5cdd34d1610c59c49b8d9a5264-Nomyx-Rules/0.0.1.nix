{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Nomyx-Rules";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Corentin Dupont";
        maintainer = "Corentin Dupont";
        author = "Corentin Dupont";
        homepage = "";
        url = "";
        synopsis = "Language to express rules for Nomic";
        description = "Provide a DSL to express rules for the Nomic game, with evaluation engine";
        buildType = "Simple";
      };
      components = {
        "Nomyx-Rules" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.ghc
            hsPkgs.hint-server
            hsPkgs.hslogger
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.safe
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.time-recurrence
          ];
        };
      };
    }