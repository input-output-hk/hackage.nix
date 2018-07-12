{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "randproc";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dbanas@banasfamily.net";
        author = "David Banas";
        homepage = "http://www.haskell.org/haskellwiki/Random_Processes";
        url = "";
        synopsis = "Data structures and support functions for working with random processes";
        description = "RandProc.hs - a Haskell library for working with random processes in a mathematically rigorous way\n(Concepts taken from /Random Processes - a Mathematical Approach for Engineers/ by:\n- Robert M. Gray\n- Lee D. Davisson\nPrentice-Hall Information and System Sciences Series, Thomas Kailath, Series Editor)";
        buildType = "Simple";
      };
      components = {
        "randproc" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }