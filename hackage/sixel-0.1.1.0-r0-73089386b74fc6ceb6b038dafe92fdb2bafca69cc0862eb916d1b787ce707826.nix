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
      identifier = { name = "sixel"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Junji hashimoto";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "https://github.com/junjihashimoto/sixel#readme";
      url = "";
      synopsis = "Sixel library to show images in a terminal emulator";
      description = "Sixel can show graphics on a terminal emulator. This library is developed to showing images on ghci.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "sixel-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sixel" or (errorHandler.buildDepError "sixel"))
          ];
          buildable = true;
        };
      };
    };
  }