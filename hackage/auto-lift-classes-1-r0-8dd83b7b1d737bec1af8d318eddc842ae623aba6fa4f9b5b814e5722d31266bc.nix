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
      specVersion = "2.0";
      identifier = { name = "auto-lift-classes"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2023, Koji Miyazato";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "";
      url = "";
      synopsis = "Deriving (Show|Read)(1|2)";
      description = "Deriving (Show|Read)(1|2) from the usual, stock deriveable\ninstances like @Show a => Show (f a)@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
        ];
        buildable = true;
      };
      tests = {
        "run-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."auto-lift-classes" or (errorHandler.buildDepError "auto-lift-classes"))
          ];
          buildable = true;
        };
      };
    };
  }