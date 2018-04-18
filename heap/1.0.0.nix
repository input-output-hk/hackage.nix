{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "heap";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2009, Stephan Friedrichs";
        maintainer = "Stephan Friedrichs (deduktionstheorem at web dot de)";
        author = "Stephan Friedrichs";
        homepage = "";
        url = "";
        synopsis = "Heaps in Haskell";
        description = "A flexible Haskell implementation of minimum, maximum,\nminimum-priority, maximum-priority and custom-ordered\nheaps.";
        buildType = "Simple";
      };
      components = {
        heap = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          heap-tests = {
            depends  = [
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }