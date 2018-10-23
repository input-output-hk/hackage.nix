{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "transformations";
        version = "0.1.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "generics@haskell.org";
      author = "Jeroen Bransen and Jose Pedro Magalhaes";
      homepage = "";
      url = "";
      synopsis = "Generic representation of tree transformations";
      description = "This library is based on ideas described in the paper:\n\n*  Jeroen Bransen and Jose Pedro Magalhaes.\n/Generic Representations of Tree Transformations/.\nWGP'13.\n<http://dreixel.net/research/pdf/grtt.pdf>";
      buildType = "Simple";
    };
    components = {
      "transformations" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.regular)
          (hsPkgs.rewriting)
          (hsPkgs.multirec)
          (hsPkgs.zipper)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }