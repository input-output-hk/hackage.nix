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
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s1563190@inf.ed.ac.uk";
      author = "Yi Zhen";
      homepage = "";
      url = "";
      synopsis = "A generic, derivable, haskell pretty printer.";
      description = "A library that supports deriving of pretty printing functions on data types.\n\nThe form of generics used is based on that introduced in the paper:\nPhilip Wadler, A Prettier Printer, The Fun of Programming,\nCornerstones of Computing (2003): 223-243.\n<http://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf original paper>\n\nThe implementation of API is referred to that designed in the library:\nGenericPretty, the details are introduced here:\n<https://hackage.haskell.org/package/GenericPretty>";
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