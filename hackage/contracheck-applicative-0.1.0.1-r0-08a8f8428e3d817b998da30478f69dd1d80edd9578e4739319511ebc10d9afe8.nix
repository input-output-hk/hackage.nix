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
      specVersion = "1.12";
      identifier = { name = "contracheck-applicative"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Fabian Birkmann";
      maintainer = "99fabianb@sis.gl";
      author = "Fabian Birkmann";
      homepage = "";
      url = "";
      synopsis = "Validation types/typeclass based on the contravariance.";
      description = "This package provides types and a typeclass that allow for effectful validation and easy composition. For documentation see the [README](https://gitlab.com/Birkmann/validation-check/-/blob/master/README.md). If there are any issues, contact me at 99fabianb@sis.gl.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }