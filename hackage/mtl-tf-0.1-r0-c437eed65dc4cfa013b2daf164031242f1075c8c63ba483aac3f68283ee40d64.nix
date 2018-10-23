{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "mtl-tf";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trevor@galois.com";
      author = "Andy Gill";
      homepage = "";
      url = "";
      synopsis = "Monad transformer library using type families";
      description = "A port of the mtl to type families.\nA monad transformer library, inspired by the paper /Functional\nProgramming with Overloading and Higher-Order Polymorphism/,\nby Mark P Jones (<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>),\nAdvanced School of Functional Programming, 1995.";
      buildType = "Simple";
    };
    components = {
      "mtl-tf" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }