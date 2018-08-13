{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
      bytestringinbase = true;
      base4 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "carray";
        version = "0.1.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jed Brown <jed@59A2.org>";
      author = "Jed Brown";
      homepage = "";
      url = "";
      synopsis = "A C-compatible array library.";
      description = "A C-compatible array library.\n\nProvides both an immutable and mutable (in the IO monad) interface.\nIncludes utilities for multi-dimensional arrays, slicing and norms.\nMemory is 16-byte aligned by default to enable use of SIMD instructions.\n";
      buildType = "Simple";
    };
    components = {
      "carray" = {
        depends  = (([
          (hsPkgs.ix-shapable)
        ] ++ (if _flags.bytestringinbase
          then [
            (hsPkgs.base)
            (hsPkgs.binary)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
          ])) ++ (if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.binary)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.binary)
          ])) ++ (if _flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }