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
      specVersion = "1.2";
      identifier = { name = "Vec-Boolean"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Tobias Bexelius";
      maintainer = "Tobias Bexelius";
      author = "Tobias Bexelius";
      homepage = "";
      url = "";
      synopsis = "Provides Boolean instances for the Vec package";
      description = "This package adds instances for the classes IfB and EqB in the Boolean package for the fixed length list data type in the Vec package.\nThese intances are useful for example when using the GPipe package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }