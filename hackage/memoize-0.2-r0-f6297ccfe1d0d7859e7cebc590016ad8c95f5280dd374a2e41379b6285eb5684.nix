{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "memoize"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tov@ccs.neu.edu";
      author = "Jesse A. Tov <tov@ccs.neu.edu>";
      homepage = "";
      url = "";
      synopsis = "A memoization library";
      description = "This library provides a type class 'Memoizable' for memoizing\nfunctions, along with instances for a variety of argument types.\nIt includes a Template Haskell function for deriving\n'Memoizable' instances for arbitrary algebraic datatypes.\n\nThe library constructs pure memo caches without the use of\n'unsafePerformIO'.  This technique relies on implementation\nassumptions that, while not guaranteed by the semantics of\nHaskell, appear to be true.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          ];
        };
      };
    }