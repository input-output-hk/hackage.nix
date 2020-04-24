{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      arrowsubclassescategory = true;
      typefamilies = true;
      optimize = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "category-extras"; version = "0.53.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008 Edward A. Kmett,\nCopyright (C) 2004--2008 Dave Menendez,\nCopyright (C) 2007 Iavor Diatchki";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Dave Menendez";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Various modules and constructs inspired by category theory";
      description = "A vastly expanded collection of modules implementing various\nideas from category theory. Notable bits include: comonads,\nadjunctions, and various recursion schemes ala\n/Functional Programming with Bananas, Lenses, Envelopes and Barbed Wire/.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ [
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }