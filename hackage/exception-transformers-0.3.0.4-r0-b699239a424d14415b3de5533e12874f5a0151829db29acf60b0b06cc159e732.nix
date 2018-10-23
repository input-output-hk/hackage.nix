{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "exception-transformers";
        version = "0.3.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2010 Harvard University\n(c) 2011-2014 Geoffrey Mainland";
      maintainer = "Geoffrey Mainland <mainland@cs.drexel.edu>";
      author = "Geoffrey Mainland <mainland@cs.drexel.edu>";
      homepage = "http://www.cs.drexel.edu/~mainland/";
      url = "";
      synopsis = "Type classes and monads for unchecked extensible exceptions.";
      description = "This package provides type classes, a monad and a monad\ntransformer that support unchecked extensible exceptions as\nwell as asynchronous exceptions. It is compatible with\nthe transformers package.";
      buildType = "Simple";
    };
    components = {
      "exception-transformers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "unit" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.exception-transformers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }