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
      specVersion = "1.6";
      identifier = { name = "blaze-svg"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "deepak.jois@gmail.com";
      author = "Deepak Jois";
      homepage = "https://github.com/deepakjois/blaze-svg";
      url = "";
      synopsis = "SVG combinator library";
      description = "SVG combinator library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
        ];
        buildable = true;
      };
    };
  }