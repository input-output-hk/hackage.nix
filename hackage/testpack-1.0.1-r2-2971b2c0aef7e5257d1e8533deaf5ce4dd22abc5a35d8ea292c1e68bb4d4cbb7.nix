{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "testpack"; version = "1.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2004-2009 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/testpack";
      url = "";
      synopsis = "Test Utililty Pack for HUnit and QuickCheck";
      description = "Haskell Test Utility Pack for HUnit and QuickCheck\ntestpack provides utilities for both HUnit and QuickCheck.  These include\ntools for running QuickCheck properties as HUnit test cases, allowing you to\ncombine both approaches in a single program.  It also includes tools for more\nhelpful displays of running progress in both HUnit and QuickCheck, additional\ngenerators for other types for QuickCheck, and shortcuts for quickly defining new\ntest cases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs.base)) ++ (if flags.splitbase
          then [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.random) ]
          else [ (hsPkgs.base) ]);
        };
      };
    }