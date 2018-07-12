{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "testpack";
          version = "2.0.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2004-2010 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/testpack";
        url = "";
        synopsis = "Test Utililty Pack for HUnit and QuickCheck";
        description = "Haskell Test Utility Pack for HUnit and QuickCheck\ntestpack provides utilities for both HUnit and QuickCheck.  These include\ntools for running QuickCheck properties as HUnit test cases, allowing you to\ncombine both approaches in a single program.  It also includes tools for more\nhelpful displays of running progress in both HUnit and QuickCheck, additional\ngenerators for other types for QuickCheck, and shortcuts for quickly defining new\ntest cases.";
        buildType = "Simple";
      };
      components = {
        "testpack" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.HUnit
            hsPkgs.QuickCheck
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") hsPkgs.base) ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.random
            ]
            else [ hsPkgs.base ]);
        };
      };
    }