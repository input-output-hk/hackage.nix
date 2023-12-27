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
      identifier = { name = "cairo-image"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2021 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/cairo-image#readme";
      url = "";
      synopsis = "Image for Cairo";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/cairo-image#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        pkgconfig = [
          (pkgconfPkgs."cairo" or (errorHandler.pkgConfDepError "cairo"))
          ];
        buildable = true;
        };
      tests = {
        "cairo-image-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
            (hsPkgs."cairo-image" or (errorHandler.buildDepError "cairo-image"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "test-endian" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
            (hsPkgs."cairo-image" or (errorHandler.buildDepError "cairo-image"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }