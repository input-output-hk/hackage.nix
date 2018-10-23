{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = true;
      bytestringinbase = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "carray";
        version = "0.1.2";
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
        depends  = (if flags.bytestringinbase
          then [
            (hsPkgs.base)
            (hsPkgs.binary)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
          ]) ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.binary)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.binary)
          ]);
      };
    };
  }