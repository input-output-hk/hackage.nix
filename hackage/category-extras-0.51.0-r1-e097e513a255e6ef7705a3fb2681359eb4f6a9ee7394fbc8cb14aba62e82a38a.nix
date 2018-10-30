{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      arrowsubclassescategory = true;
      redefinableeithermonad = true;
      typefamilies = true;
      optimize = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "category-extras";
        version = "0.51.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008 Edward A. Kmett\nCopyright (C) 2004--2008 Dave Menendez\nCopyright (C) 2007 Iavor Diatchki";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Dave Menendez";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Various modules and constructs inspired by category theory";
      description = "A vastly expanded collection of modules implementing various\nideas from category theory. Notable bits include: comonads,\nadjunctions, functor fixedpoints and various recursion\noperaters ala /Functional Programming with Bananas, Lenses,\nEnvelopes and Barbed Wire/.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.mtl)
          (hsPkgs.base)
        ] ++ (if flags.arrowsubclassescategory
          then [
            (hsPkgs.ghc)
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [
            (hsPkgs.ghc)
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (flags.redefinableeithermonad) (hsPkgs.ghc);
      };
    };
  }