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
      specVersion = "1.8";
      identifier = {
        name = "memoize";
        version = "0.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jesse@eecs.northwestern.edu";
      author = "Jesse A. Tov <jesse@eecs.northwestern.edu>";
      homepage = "";
      url = "";
      synopsis = "A memoization library";
      description = "This library provides a type class 'Memoizable' for memoizing\nfunctions, along with instances for a variety of argument types.\nIt includes a Template Haskell function for deriving\n'Memoizable' instances for arbitrary algebraic datatypes.\n\nThe library constructs pure memo caches without the use of\n'unsafePerformIO'.  This technique relies on implementation\nassumptions that, while not guaranteed by the semantics of\nHaskell, appear to be true.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "memoize-test1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.memoize)
          ];
        };
        "memoize-test2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.memoize)
          ];
        };
      };
    };
  }