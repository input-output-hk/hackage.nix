{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "data-spacepart"; version = "20090215.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor <coreyoconnor@gmail.com>";
      author = "Corey O'Connor <coreyoconnor@gmail.com>";
      homepage = "http://code.haskell.org/data-spacepart";
      url = "http://code.haskell.org/data-spacepart";
      synopsis = "Deprecated. Now called \"spacepart\". Space partitioning data structures.";
      description = "Package \"data-spacepart\" is now called just \"spacepart\". This was due to issues with the version\nnumber used for the first release of data-spacepart.\n\nhttp:\\/\\/hackage.haskell.org\\/cgi-bin\\/hackage-scripts\\/package\\/spacepart\n\nSpace partition data structures. Currently only a QuadTree.\n\ndarcs get --partial http:\\/\\/code.haskell.org\\/data-spacepart\\/\n\nTODO:\n\nlots.\n\nSee README: http:\\/\\/code.haskell.org\\/data-spacepart\\/README";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          ];
        buildable = true;
        };
      };
    }