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
        name = "mtl";
        version = "1.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "Andy Gill";
      homepage = "";
      url = "";
      synopsis = "Monad transformer library";
      description = "A monad transformer library, inspired by the paper /Functional\nProgramming with Overloading and Higher-Order Polymorphism/,\nby Mark P Jones (<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>),\nAdvanced School of Functional Programming, 1995.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }