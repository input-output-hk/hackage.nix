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
      identifier = { name = "yesod-autoreload"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2020-2021 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/yesod-autoreload#readme";
      url = "";
      synopsis = "Auto-reload a yesod app during development";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-websockets" or (errorHandler.buildDepError "yesod-websockets"))
        ];
        buildable = true;
      };
      exes = {
        "yesod-autoreload-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod-autoreload" or (errorHandler.buildDepError "yesod-autoreload"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          ];
          buildable = true;
        };
      };
      tests = {
        "yesod-autoreload-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod-autoreload" or (errorHandler.buildDepError "yesod-autoreload"))
          ];
          buildable = true;
        };
      };
    };
  }