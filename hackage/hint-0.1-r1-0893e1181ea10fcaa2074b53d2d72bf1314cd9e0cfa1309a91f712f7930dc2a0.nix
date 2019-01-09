{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hint"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jcpetruzza@gmail.com";
      author = "Daniel Gorin";
      homepage = "";
      url = "";
      synopsis = "Runtime Haskell interpreter (GHC API wrapper)";
      description = "This library defines an @Interpreter@ monad, inside which modules can be\nloaded, and strings with Haskell expressions can be evaluated, coerced\ninto values, or type-checked. The library is thread-safe and all\noperations (even the coertion of expressions to values) are type-safe.\nIt is, esentially, a huge subset of the GHC API wrapped in a simpler\nAPI. Tested with GHC 6.6.1.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-src)
          (hsPkgs.ghc)
          (hsPkgs.mtl)
          ];
        };
      };
    }