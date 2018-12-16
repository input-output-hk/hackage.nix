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
      specVersion = "0";
      identifier = {
        name = "lazysmallcheck";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matthew Naylor <mfn@cs.york.ac.uk>";
      author = "Matthew Naylor and Fredrik Lindblad";
      homepage = "http://www.cs.york.ac.uk/~mfn/lazysmallcheck/";
      url = "";
      synopsis = "A library for demand-driven testing of Haskell programs";
      description = "Lazy SmallCheck is a library for exhaustive, demand-driven testing of\nHaskell programs.  It is based on the idea that if a property holds\nfor a partially-defined input then it must also hold for all\nfully-defined refinements of the that input.  Compared to ``eager''\ninput generation as in SmallCheck, Lazy SmallCheck may require\nsignificantly fewer test-cases to verify a property for all inputs up\nto a given depth.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
    };
  }