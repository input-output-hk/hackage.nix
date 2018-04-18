{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "guarded-rewriting";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Universiteit Utrecht";
        maintainer = "generics@haskell.org";
        author = "Thomas van Noort, Alexey Rodriguez Yakushev,\nStefan Holdermans, Johan Jeuring, Bastiaan Heeren,\nJose Pedro Magalhaes";
        homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/GuardedRewriting";
        url = "";
        synopsis = "Datatype-generic rewriting with preconditions";
        description = "This package provides rewriting functionality for datatypes. Most forms of\ndatatypes are supported, including parametrized and mutually-recursive.\n\nThis library has been described in the paper:\n\n*  Thomas van Noort, Alexey Rodriguez Yakushev, Stefan Holdermans,\nJohan Jeuring, Bastiaan Heeren, Jose Pedro Magalhaes.\n/A Lightweight Approach to Datatype-Generic Rewriting./\nJournal of Functional Programming, Special Issue on Generic Programming,\n2010.\n\nMore information about this library can be found at\n<http://www.cs.uu.nl/wiki/GenericProgramming/GuardedRewriting>.";
        buildType = "Simple";
      };
      components = {
        guarded-rewriting = {
          depends  = [
            hsPkgs.base
            hsPkgs.instant-generics
          ];
        };
      };
    }