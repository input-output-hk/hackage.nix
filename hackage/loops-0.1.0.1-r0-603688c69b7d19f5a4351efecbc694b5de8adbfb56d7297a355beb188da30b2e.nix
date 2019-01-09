{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "loops"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Thomas Tuegel 2014";
      maintainer = "ttuegel@gmail.com";
      author = "Thomas Tuegel";
      homepage = "";
      url = "";
      synopsis = "Fast imperative-style loops";
      description = "@loops@ is a library for fast, imperative-style loops in Haskell. Performance\nis robust because there is no reliance on fusion. @do@-notation nests loops,\nproviding syntax cleaner than manual recursion. A class @ForEach@ is provided\nenabling iteration over common container types.\n\nFor best performance, please compile your code with @-O2@. You should also\nuse GHC's LLVM backend if possible; it generally produces faster executables.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.loops)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      benchmarks = {
        "benchs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.loops)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }