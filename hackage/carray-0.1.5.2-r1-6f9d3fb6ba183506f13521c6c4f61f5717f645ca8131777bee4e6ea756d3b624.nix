{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      splitbase = true;
      bytestringinbase = true;
      base4 = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "carray";
        version = "0.1.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jed Brown <jed@59A2.org>, Henning Thielemann <fft@henning-thielemann.de>";
      author = "Jed Brown";
      homepage = "";
      url = "";
      synopsis = "A C-compatible array library.";
      description = "A C-compatible array library.\n\nProvides both an immutable and mutable (in the IO monad) interface.\nIncludes utilities for multi-dimensional arrays, slicing and norms.\nMemory is 16-byte aligned by default to enable use of SIMD instructions.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.ix-shapable)
          (hsPkgs.binary)
        ] ++ (if flags.bytestringinbase
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ])) ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [
            (hsPkgs.base)
          ])) ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }