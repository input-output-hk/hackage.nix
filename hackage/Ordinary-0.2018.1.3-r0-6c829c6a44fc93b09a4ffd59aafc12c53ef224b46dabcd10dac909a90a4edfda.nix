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
      identifier = { name = "Ordinary"; version = "0.2018.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2018 Marisa Kirisame";
      maintainer = "lolisa@marisa.moe";
      author = "Marisa Kirisame";
      homepage = "https://github.com/MarisaKirisame/Ordinary#readme";
      url = "";
      synopsis = "Short description of your package";
      description = "Please see the README on Github at <https://github.com/MarisaKirisame/Ordinary#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
          ];
        buildable = true;
        };
      exes = {
        "Ordinary-exe" = {
          depends = [
            (hsPkgs."Ordinary" or (errorHandler.buildDepError "Ordinary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Ordinary-test" = {
          depends = [
            (hsPkgs."Ordinary" or (errorHandler.buildDepError "Ordinary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            ];
          buildable = true;
          };
        };
      };
    }