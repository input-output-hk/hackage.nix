{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hTensor";
        version = "0.7.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://perception.inf.um.es/tensor";
      url = "";
      synopsis = "Multidimensional arrays and simple tensor computations.";
      description = "This is an experimental library for multidimensional arrays,\noriented to support simple tensor computations and multilinear\nalgebra.\n\nArray dimensions have an \\\"identity\\\" which is preserved\nin data manipulation. Indices are explicitly selected by name in\nexpressions, and Einstein's summation convention for repeated indices\nis automatically applied.\n\nThe library has a purely functional interface: arrays are immutable,\nand operations typically work on whole structures which can be assembled\nand decomposed using simple primitives. Arguments are automatically made conformant\nby replicating them along extra dimensions appearing in an operation.\nThere is preliminary support for Geometric Algebra and for solving multilinear systems.\n\nA tutorial can be found in the website of the project.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.hmatrix)
          (hsPkgs.containers)
          (hsPkgs.random)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }