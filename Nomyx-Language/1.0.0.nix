{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nomyx-language";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Corentin Dupont";
        maintainer = "Corentin Dupont";
        author = "Corentin Dupont";
        homepage = "http://www.nomyx.net";
        url = "";
        synopsis = "Language to express rules for Nomic";
        description = "A DSL to express rules in a Nomic game. See package Nomyx for a full game implementation.";
        buildType = "Simple";
      };
      components = {
        nomyx-language = {
          depends  = [
            hsPkgs.DebugTraceHelpers
            hsPkgs.Boolean
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.ghc
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.time
            hsPkgs.text
            hsPkgs.time-recurrence
            hsPkgs.monad-loops
            hsPkgs.imprevu
            hsPkgs.shortcut
          ];
        };
      };
    }