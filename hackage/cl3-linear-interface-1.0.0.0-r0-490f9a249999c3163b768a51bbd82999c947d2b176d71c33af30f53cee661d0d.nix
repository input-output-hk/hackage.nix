{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cl3-linear-interface"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Nathan Waivio";
      maintainer = "Nathan Waivio <nathan.waivio@gmail.com>";
      author = "Nathan Waivio";
      homepage = "https://github.com/waivio/cl3-linear-interface";
      url = "";
      synopsis = "Interface to/from Cl3 and Linear.";
      description = "Haskell Library implementing standard interface functions for the Algebra of Physical Space Cl(3,0) and Linear";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cl3" or ((hsPkgs.pkgs-errors).buildDepError "cl3"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          ];
        buildable = true;
        };
      };
    }