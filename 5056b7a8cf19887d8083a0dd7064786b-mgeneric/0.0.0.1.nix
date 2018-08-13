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
        name = "mgeneric";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Rafaël Bocquet <rafaelbocquet+github@gmail.com>";
      author = "Rafaël Bocquet";
      homepage = "http://github.com/RafaelBocquet/haskell-mgeneric/";
      url = "";
      synopsis = "Generics with multiple parameters";
      description = "This package provides an implementation of generics with multiple parameters in Haskell, as described in http://dreixel.net/research/pdf/gpmp_colour.pdf.\nA MGeneric instance can be derived for most datatypes with ```deriveMGeneric ''Type```\nIt also provides the type classes MFunctor, MFoldable and MTraversable, generalisations of Functor, Foldable and Traversable to kinds other than (* -> *), and the type class MZipWith.";
      buildType = "Simple";
    };
    components = {
      "mgeneric" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }