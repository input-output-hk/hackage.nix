{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Ranged-sets";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Paul Johnson, 2005, 2006, 2007";
        maintainer = "paul@cogito.org.uk";
        author = "Paul Johnson";
        homepage = "http://ranged-sets.sourceforge.net/";
        url = "";
        synopsis = "Ranged sets for Haskell";
        description = "A ranged set is an ordered list of ranges.  This allows sets\nsuch as all reals x such that\n(0.25 < x <= 0.75 or 1.4 <= x < 2.3 or 4.5 < x).";
        buildType = "Custom";
      };
      components = {
        "Ranged-sets" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
      };
    }