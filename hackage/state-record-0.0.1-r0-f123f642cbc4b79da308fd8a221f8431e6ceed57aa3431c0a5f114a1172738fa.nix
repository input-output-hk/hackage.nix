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
      specVersion = "0";
      identifier = { name = "state-record"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2011 Karl Voelker";
      maintainer = "Karl Voelker <ktvoelker@gmail.com>";
      author = "Karl Voelker <ktvoelker@gmail.com>";
      homepage = "https://github.com/ktvoelker/state-record";
      url = "";
      synopsis = "Better records for State monad states";
      description = "This package provides a Template Haskell function which transforms\na normal record declaration into one which supports many useful operations\nwhen used as the state in a State monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }