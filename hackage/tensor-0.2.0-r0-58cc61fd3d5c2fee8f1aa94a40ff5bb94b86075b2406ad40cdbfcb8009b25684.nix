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
        name = "tensor";
        version = "0.2.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Federico Squartini, Nicola Squartini";
      homepage = "http://noaxiom.org/tensor";
      url = "";
      synopsis = "A completely type-safe library for linear algebra";
      description = "This library defines data types and classes for fixed dimension\nvectors and tensors. See the homepage <http://noaxiom.org/tensor>\nfor more details, or @\"Data.Tensor.Examples\"@ for a short tutorial.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.vector)
        ];
      };
    };
  }