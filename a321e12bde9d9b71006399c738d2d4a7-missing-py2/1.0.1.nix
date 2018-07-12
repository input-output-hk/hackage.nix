{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "missing-py2";
          version = "1.0.1";
        };
        license = "GPL-2.0-only";
        copyright = "Copyright (c) 2005-2008 John Goerzen";
        maintainer = "Dom De Re";
        author = "John Goerzen";
        homepage = "https://github.com/domdere/missing-py2";
        url = "";
        synopsis = "Haskell interface to Python";
        description = "A Haskell Interface into the standard Python Interpreter\n\nA fork of John Goerzen's MissingPy library, hlinted and updated to run with GHC 7.6.3,\nthis is for legacy projects.\n\nFor newer projects you might want to consider http://hackage.haskell.org/package/cpython\ninstead.\n\nOriginal Documentation:\n\nMissingPy is two things:\n\nA Haskell binding for many C and Python libraries for tasks such as\ndata compression, databases, etc.  This can be found in the\nMissingPy module tree.\n\nAlso, it's a low-level Haskell binding to the Python interpreter to\nenable development of hybrid applications that use both\nenvironments.  This can be found in the Python module tree.  The\nHaskell bindings above use this environment.\n\nMissingPy permits you to call Python code from Haskell.  It does NOT\npermit you to call Haskell code from Python.\n\nMissingPy is the companion to my MissingH library, and integrates with\nit.";
        buildType = "Custom";
      };
      components = {
        "missing-py2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.MissingH
            hsPkgs.anydbm
          ];
        };
        tests = {
          "originalunittests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.anydbm
              hsPkgs.directory
              hsPkgs.MissingH
              hsPkgs.HUnit
              hsPkgs.missing-py2
            ];
          };
        };
      };
    }