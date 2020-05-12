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
      identifier = { name = "skylighting-extensions"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/pandoc-highlighting-ext";
      url = "";
      synopsis = "Customized Skylighting syntax highlighters";
      description = "A miscellaneous assortment of customized Skylighting syntax highlighters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
          (hsPkgs."skylighting-modding" or (errorHandler.buildDepError "skylighting-modding"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }