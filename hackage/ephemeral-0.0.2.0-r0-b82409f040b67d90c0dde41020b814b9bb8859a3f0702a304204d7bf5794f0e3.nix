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
      specVersion = "3.0";
      identifier = { name = "ephemeral"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2020";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/ephemeral#readme";
      url = "";
      synopsis = "See readme.md";
      description = "See readme.md for description.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
    };
  }