{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; bytestringinbase = false; base4 = true; };
    package = {
      specVersion = "1.14";
      identifier = { name = "carray"; version = "0.1.6.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jed Brown <jed@59A2.org>, Henning Thielemann <fft@henning-thielemann.de>";
      author = "Jed Brown";
      homepage = "";
      url = "";
      synopsis = "A C-compatible array library.";
      description = "A C-compatible array library.\n\nProvides both an immutable and mutable (in the IO monad) interface.\nIncludes utilities for multi-dimensional arrays, slicing and norms.\nMemory is 16-byte aligned by default to enable use of vector instructions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.ix-shapable)
          (hsPkgs.binary)
          (hsPkgs.QuickCheck)
          ] ++ (if flags.bytestringinbase
          then [ (hsPkgs.base) ]
          else [ (hsPkgs.base) (hsPkgs.bytestring) ])) ++ (if flags.splitbase
          then [ (hsPkgs.base) (hsPkgs.array) ]
          else [ (hsPkgs.base) ])) ++ (if flags.base4
          then [ (hsPkgs.base) (hsPkgs.syb) ]
          else [ (hsPkgs.base) ]);
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.ix-shapable)
            (hsPkgs.carray)
            (hsPkgs.array)
            (hsPkgs.base)
            ];
          };
        };
      benchmarks = {
        "meteor-contest-c" = { depends = [ (hsPkgs.carray) (hsPkgs.base) ]; };
        "meteor-contest-u" = { depends = [ (hsPkgs.array) (hsPkgs.base) ]; };
        "nsieve-bits-c" = {
          depends = [ (hsPkgs.carray) (hsPkgs.array) (hsPkgs.base) ];
          };
        "nsieve-bits-s" = { depends = [ (hsPkgs.array) (hsPkgs.base) ]; };
        "nsieve-bits-u" = { depends = [ (hsPkgs.array) (hsPkgs.base) ]; };
        };
      };
    }