{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { bench = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "async";
        version = "2.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow 2012";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Simon Marlow";
      homepage = "https://github.com/simonmar/async";
      url = "";
      synopsis = "Run IO operations asynchronously and wait for their results";
      description = "This package provides a higher-level interface over\nthreads, in which an @Async a@ is a concurrent\nthread that will eventually deliver a value of\ntype @a@.  The package provides ways to create\n@Async@ computations, wait for their results, and\ncancel them.\n\nUsing @Async@ is safer than using threads in two\nways:\n\n* When waiting for a thread to return a result,\nif the thread dies with an exception then the\ncaller must either re-throw the exception\n('wait') or handle it ('waitCatch'); the\nexception cannot be ignored.\n\n* The API makes it possible to build a tree of\nthreads that are automatically killed when\ntheir parent dies (see 'withAsync').";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.stm)
        ];
      };
      exes = {
        "concasync" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.stm)
          ];
        };
        "conccancel" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.stm)
          ];
        };
        "race" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.stm)
          ];
        };
      };
      tests = {
        "test-async" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.stm)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }