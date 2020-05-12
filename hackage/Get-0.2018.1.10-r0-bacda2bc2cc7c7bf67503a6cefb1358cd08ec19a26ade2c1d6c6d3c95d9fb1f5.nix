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
      identifier = { name = "Get"; version = "0.2018.1.10"; };
      license = "BSD-3-Clause";
      copyright = "2018 Marisa Kirisame";
      maintainer = "lolisa@marisa.moe";
      author = "Marisa Kirisame";
      homepage = "https://github.com/MarisaKirisame/Get#readme";
      url = "";
      synopsis = "get stuff out of stuff";
      description = "Please see the README on Github at <https://github.com/MarisaKirisame/Get#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          ];
        buildable = true;
        };
      tests = {
        "Get-test" = {
          depends = [
            (hsPkgs."Get" or (errorHandler.buildDepError "Get"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            ];
          buildable = true;
          };
        };
      };
    }