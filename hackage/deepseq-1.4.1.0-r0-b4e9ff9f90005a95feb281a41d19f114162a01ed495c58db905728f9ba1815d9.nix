{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "deepseq";
        version = "1.4.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Deep evaluation of data structures";
      description = "This package provides methods for fully evaluating data structures\n(\\\"deep evaluation\\\"). Deep evaluation is often used for adding\nstrictness to a program, e.g. in order to force pending exceptions,\nremove space leaks, or force lazy I/O to happen. It is also useful\nin parallel programs, to ensure pending work does not migrate to the\nwrong thread.\n\nThe primary use of this package is via the 'deepseq' function, a\n\\\"deep\\\" version of 'seq'. It is implemented on top of an 'NFData'\ntypeclass (\\\"Normal Form Data\\\", data structures with no unevaluated\ncomponents) which defines strategies for fully evaluating different\ndata types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2") (hsPkgs.ghc-prim);
      };
      tests = {
        "deepseq-generics-tests" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }