{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "lcs";
          version = "0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Ian Lynagh, 2005";
        maintainer = "igloo@earth.li";
        author = "Ian Lynagh";
        homepage = "http://urchin.earth.li/~ian/cabal/lcs/";
        url = "";
        synopsis = "Find longest common sublist of two lists";
        description = "Provides a function lcs that takes two lists and returns a longest\ncommon sublist. For example, lcs \"abcd\" \"acbd\" is either \"abd\" or\n\"acd\".\n\nThe package provides a simple, stupid and (most of all) slow\nimplementation that needs, for inputs of length m and n, O(m+n)\nspace and O((m+n)!) time in the worst case.\n\nIt also provides an implementation of the Hunt-Szymanski LCS\nalgorithm, based on that in \"String searching algorithms\" by\nGraham A Stephen, ISBN 981021829X.\n\nGiven inputs xs and ys of length m and n respectively, where there\nare r pairs (x, y) where x is in xs, y is in ys and x == y,\nHunt-Szymanski needs O(r+m+n) space and O((r+m+n)*log(m+n)) time.\nThus this is O((m+n)^2) space and O((m+n)^2*log(m+n)) time in the\nworst case.";
        buildType = "Custom";
      };
      components = {
        "lcs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }