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
      identifier = { name = "Rasterific"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "twinside@gmail.com";
      author = "Vincent Berthoux";
      homepage = "";
      url = "";
      synopsis = "A pure haskell drawing engine.";
      description = "<<data:image/png;base64,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>>\n\nRasterific is a vector drawing library (a rasterizer)\nimplemented in pure haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."FontyFruity" or (errorHandler.buildDepError "FontyFruity"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }