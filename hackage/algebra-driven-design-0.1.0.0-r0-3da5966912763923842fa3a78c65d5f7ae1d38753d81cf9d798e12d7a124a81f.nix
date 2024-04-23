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
      identifier = { name = "algebra-driven-design"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/algebra-driven-design#readme";
      url = "";
      synopsis = "Companion library for the book Algebra-Driven Design by Sandy Maguire";
      description = "Please see the README on GitHub at <https://github.com/isovector/algebra-driven-design#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."quickspec" or (errorHandler.buildDepError "quickspec"))
        ];
        buildable = true;
      };
    };
  }