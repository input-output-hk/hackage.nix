{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ComonadSheet";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2013-2014 Kenneth W. Foner";
        maintainer = "kenneth.foner@gmail.com";
        author = "Kenneth Foner";
        homepage = "https://github.com/kwf/ComonadSheet";
        url = "";
        synopsis = "A library for expressing spreadsheet-like computations as the fixed-points of comonads.";
        description = "@ComonadSheet@ is a library for expressing spreadsheet-like computations with absolute and relative references, using fixed-points of n-dimensional comonads. For examples of use, see the <https://github.com/kwf/ComonadSheet GitHub page> for the library.";
        buildType = "Simple";
      };
      components = {
        "ComonadSheet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.distributive
            hsPkgs.transformers
            hsPkgs.applicative-numbers
            hsPkgs.Stream
            hsPkgs.NestedFunctor
            hsPkgs.PeanoWitnesses
            hsPkgs.IndexedList
            hsPkgs.Tape
            hsPkgs.containers
          ];
        };
      };
    }