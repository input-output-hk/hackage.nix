{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "stm-chans"; version = "3.0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011--2015 wren gayle romano";
      maintainer = "wren@community.haskell.org";
      author = "wren gayle romano, Thomas DuBuisson";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Additional types of channels for STM.";
      description = "Additional types of channels for STM.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }