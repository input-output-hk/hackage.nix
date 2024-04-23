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
      identifier = { name = "hsluv-haskell"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2018 modal/duality";
      maintainer = "surya@modalduality.org";
      author = "modal/duality";
      homepage = "";
      url = "";
      synopsis = "HSLuv conversion utility.";
      description = "Haskell port of the perceptually-uniform HSLuv colorspace model (http://www.hsluv.org/).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
        ];
        buildable = true;
      };
      tests = {
        "hsluv-haskell-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hsluv-haskell" or (errorHandler.buildDepError "hsluv-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }