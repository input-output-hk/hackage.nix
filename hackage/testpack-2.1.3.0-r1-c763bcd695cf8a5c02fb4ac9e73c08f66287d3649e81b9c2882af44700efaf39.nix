{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "testpack";
        version = "2.1.3.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2004-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "https://github.com/jgoerzen/testpack";
      url = "";
      synopsis = "Test Utililty Pack for HUnit and QuickCheck (unmaintained)";
      description = "Please note that this package is no longer maintained by its author!\n\nHaskell Test Utility Pack for HUnit and QuickCheck testpack provides\nutilities for both HUnit and QuickCheck. These include tools for\nrunning QuickCheck properties as HUnit test cases, allowing you to\ncombine both approaches in a single program. It also includes tools for\nmore helpful displays of running progress in both HUnit and QuickCheck,\nadditional generators for other types for QuickCheck, and shortcuts for\nquickly defining new test cases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs.base)) ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }