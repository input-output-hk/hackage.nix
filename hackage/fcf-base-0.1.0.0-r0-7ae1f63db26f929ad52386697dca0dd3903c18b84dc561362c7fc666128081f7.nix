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
      identifier = { name = "fcf-base"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://gitlab.com/lysxia/fcf-family";
      url = "";
      synopsis = "Family-of-families instances for base";
      description = "See the package <https://hackage.haskell.org/package/fcf-family fcf-family> for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fcf-family" or (errorHandler.buildDepError "fcf-family"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "fcf-base-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fcf-family" or (errorHandler.buildDepError "fcf-family"))
            (hsPkgs."fcf-base" or (errorHandler.buildDepError "fcf-base"))
          ];
          buildable = true;
        };
      };
    };
  }