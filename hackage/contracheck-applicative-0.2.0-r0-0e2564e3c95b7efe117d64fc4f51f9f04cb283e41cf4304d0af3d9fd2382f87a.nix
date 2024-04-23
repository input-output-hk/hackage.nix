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
      identifier = { name = "contracheck-applicative"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Fabian Birkmann";
      maintainer = "99fabianb@sis.gl";
      author = "Fabian Birkmann";
      homepage = "";
      url = "";
      synopsis = "Validation types/typeclass based on the contravariance.";
      description = "This package provides types and a typeclass that allow for effectful validation and easy composition. For documentation see the [README](https://gitlab.com/Birkmann/validation-check/-/blob/master/README.md). If there are any issues, contact me at 99fabianb@sis.gl or add an issue on [gitlab](https://gitlab.com/Birkmann/validation-check).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
        ];
        buildable = true;
      };
    };
  }