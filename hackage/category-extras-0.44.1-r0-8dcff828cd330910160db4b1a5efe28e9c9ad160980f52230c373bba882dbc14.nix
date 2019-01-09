{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "category-extras"; version = "0.44.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008 Edward A. Kmett\nCopyright (C) 2004--2008 Dave Menendez\nCopyright (C) 2007 Iavor Diatchki";
      maintainer = "ekmett@gmail.com";
      author = "Edward A. Kmett, Dave Menendez";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Various modules and constructs inspired by category theory.";
      description = "A vastly expanded collection of modules implementing various\nideas from category theory. Notable bits include: comonads,\nadjunctions, functor fixedpoints and various recursion\noperaters ala /Functional Programming with Bananas, Lenses,\nEnvelopes and Barbed Wire/.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.array) ]; };
      };
    }