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
      identifier = { name = "hsautogui"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Mitchell Vitez";
      maintainer = "mitchell@vitez.me";
      author = "Mitchell Vitez";
      homepage = "https://github.com/mitchellvitez/hsautogui#readme";
      url = "";
      synopsis = "Haskell bindings for PyAutoGUI, a library for automating user interaction";
      description = "Please see the README on GitHub at <https://github.com/mitchellvitez/hsautogui#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cpython" or (errorHandler.buildDepError "cpython"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = [ (pkgs."python3" or (errorHandler.sysDepError "python3")) ];
        buildable = true;
      };
      exes = {
        "hsautogui-sample-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsautogui" or (errorHandler.buildDepError "hsautogui"))
          ];
          libs = [ (pkgs."python3" or (errorHandler.sysDepError "python3")) ];
          buildable = true;
        };
      };
    };
  }