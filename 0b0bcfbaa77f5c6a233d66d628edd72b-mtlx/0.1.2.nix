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
      specVersion = "0";
      identifier = {
        name = "mtlx";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marks@ittc.ku.edu";
      author = "Mark Snyder";
      homepage = "";
      url = "";
      synopsis = "Monad transformer library with type indexes,\nproviding 'free' copies.";
      description = "A monad transformer library with type indexes, which allows the\nprogrammer to get a distinct copy of one of the monads without\nreproducing definitions and instances.  It doesn't currently\nsupport Error or List monads.  Inspired by the original mtl.  That\nlibrary was inspired by the paper /Functional Programming with\nOverloading and Higher-Order Polymorphism/, by Mark P Jones\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>), Advanced\nSchool of Functional Programming, 1995.";
      buildType = "Simple";
    };
    components = {
      "mtlx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }