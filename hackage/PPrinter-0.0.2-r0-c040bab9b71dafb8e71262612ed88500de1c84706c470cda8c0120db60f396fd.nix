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
      specVersion = "1.10";
      identifier = {
        name = "PPrinter";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s1563190@inf.ed.ac.uk";
      author = "Yi Zhen";
      homepage = "";
      url = "";
      synopsis = "A derivable Haskell pretty printer.";
      description = "A library that supports deriving of pretty printing functions on data types.\n\nThe interfaces of pretty printer used are based on that introduced in the paper:\nPhilip Wadler, A Prettier Printer, The Fun of Programming,\nCornerstones of Computing (2003): 223-243.\n<http://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf original paper>\n\nThe form of generic feature used is based on that introduced in the paper:\nMagalhaes, et al., A Generic Deriving Mechanism for Haskell,\n3'rd ACM Symposium on Haskell, pp. 37-48, September 2010,\n<http://dx.doi.org/10.1145/1863523.1863529>.\nThe necessary information of implementation of GHC.Generics is described here:\n<https://hackage.haskell.org/package/base-4.9.0.0/docs/GHC-Generics.html#g:1>.\n\nThe implementation of deriving part of API is based on that designed in the library:\nGenericPretty, the details are introduced here:\n<https://hackage.haskell.org/package/GenericPretty>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }