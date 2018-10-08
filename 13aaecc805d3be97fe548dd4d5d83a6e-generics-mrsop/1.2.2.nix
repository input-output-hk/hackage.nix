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
      specVersion = "1.24";
      identifier = {
        name = "generics-mrsop";
        version = "1.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "v.cacciarimiraldo@gmail.com";
      author = "Victor Miraldo and Alejandro Serrano";
      homepage = "";
      url = "";
      synopsis = "Generic Programming with Mutually Recursive Sums of Products.";
      description = "A library that supports generic programming for mutually\nrecursive families in the sum-of-products style.\n\nA couple usage examples can be found under \"Generics.MRSOP.Examples\"\n";
      buildType = "Simple";
    };
    components = {
      "generics-mrsop" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
        ];
      };
    };
  }