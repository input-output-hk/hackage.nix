{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "minilens"; version = "0.1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "2008-2015 Ramin Honary";
      maintainer = "ramin.honary@gmail.com";
      author = "Ramin Honary";
      homepage = "https://github.com/RaminHAL9001/minilens";
      url = "";
      synopsis = "A minimalistic lens library, providing only the simplest, most basic lens functionality.";
      description = "Lenses satisfy the properties of the Category type class, and are used\nto inspect and update individual elements of a data structue in a type-safe\nway. This library provides the simplest possible data types satisfying\nthese properties.\n\"minilens\" type aims to provide a very simple improvement on Haskell's\nrecord syntax: the idea of composable record accessors called 'Lens'es.\nAs of yet, there are no fancy Template Haskell APIs for generating lenses\nprogrammatically; you are expected to write your lenses by hand. Some handy\nhelper functions are provided to help you do this.\nThis library was originally part of the Dao package, but has been branched\ninto it's own package in the hopes that it will be useful in a wider\nvariety of projects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }