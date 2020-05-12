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
      identifier = { name = "HsWebots"; version = "0.1.1.2"; };
      license = "MIT";
      copyright = "2020 Junji Hashimoto";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "https://github.com/cyberbotics/HsWebots#readme";
      url = "";
      synopsis = "Webots bindings for Haskell";
      description = "Please see the README on GitHub at <https://github.com/cyberbotics/HsWebots#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."inline-c-cpp" or (errorHandler.buildDepError "inline-c-cpp"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = [
          (pkgs."Controller" or (errorHandler.sysDepError "Controller"))
          (pkgs."driver" or (errorHandler.sysDepError "driver"))
          ];
        buildable = true;
        };
      tests = {
        "HsWebots-test" = {
          depends = [
            (hsPkgs."HsWebots" or (errorHandler.buildDepError "HsWebots"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."VRML" or (errorHandler.buildDepError "VRML"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."inline-c-cpp" or (errorHandler.buildDepError "inline-c-cpp"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }