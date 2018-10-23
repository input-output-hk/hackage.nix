{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bpann";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Robert Steuck 2011";
      maintainer = "robert.steuck@gmail.com";
      author = "Robert Steuck";
      homepage = "";
      url = "";
      synopsis = "backpropagation neuronal network";
      description = "- fully-connected multylayer perceptron\n- uses bias neurons\n- creation of randomly initialized networks of arbitrary size\n- easy (de-)serialization";
      buildType = "Simple";
    };
    components = {
      "bpann" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.random)
        ];
      };
    };
  }