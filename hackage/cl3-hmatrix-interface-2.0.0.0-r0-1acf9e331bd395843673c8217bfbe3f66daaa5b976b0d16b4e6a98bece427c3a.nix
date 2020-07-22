{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cl3-hmatrix-interface"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018-2020 Nathan Waivio";
      maintainer = "Nathan Waivio <nathan.waivio@gmail.com>";
      author = "Nathan Waivio";
      homepage = "https://github.com/waivio/cl3-hmatrix-interface";
      url = "";
      synopsis = "Interface to/from Cl3 and HMatrix.";
      description = "Haskell Library implementing standard interface functions for the Algebra of Physical Space Cl(3,0) and HMatrix   ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cl3" or (errorHandler.buildDepError "cl3"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
        buildable = true;
        };
      };
    }