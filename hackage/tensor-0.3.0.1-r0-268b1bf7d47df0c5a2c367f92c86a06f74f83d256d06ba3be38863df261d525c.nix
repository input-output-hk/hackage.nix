{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "tensor";
        version = "0.3.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "© 2012-2013 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Federico Squartini, Nicola Squartini";
      homepage = "http://noaxiom.org/tensor";
      url = "";
      synopsis = "A completely type-safe library for linear algebra";
      description = "This library defines data types and classes for fixed dimension\nvectors and tensors. See the homepage <http://noaxiom.org/tensor>\nfor more details, or @\"Data.Tensor.Examples\"@ for a short tutorial.";
      buildType = "Simple";
    };
    components = {
      "tensor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.random)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test-ordinal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.tensor)
          ];
        };
        "test-multiindex" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.tensor)
          ];
        };
        "test-tensor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.tensor)
          ];
        };
      };
    };
  }