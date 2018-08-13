{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mtl-tf";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "Andy Gill, M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Monad Transformer Library with Type Families";
      description = "A port of the mtl to type families.\nA monad transformer library, inspired by the paper /Functional\nProgramming with Overloading and Higher-Order Polymorphism/,\nby Mark P Jones (<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>),\nAdvanced School of Functional Programming, 1995.";
      buildType = "Simple";
    };
    components = {
      "mtl-tf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }