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
      specVersion = "2.2";
      identifier = { name = "coercible-subtypes"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Koji Miyazato";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "https://github.com/viercc/coercible-subtypes";
      url = "";
      synopsis = "Coercible but only in one direction";
      description = "Newtype wrapper 'Data.Type.Coercion.Sub.Sub'\naround 'Data.Type.Coercion.Coercion'\nto represent unidirectional coercion,\nand combinators for it, like 'Data.Type.Coercion.Sub.mapR'\nwhich extends coercion over covariant @Functor@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
        buildable = true;
        };
      };
    }