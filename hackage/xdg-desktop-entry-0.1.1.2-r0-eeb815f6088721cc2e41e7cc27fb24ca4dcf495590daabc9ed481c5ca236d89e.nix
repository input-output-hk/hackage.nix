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
      specVersion = "2.4";
      identifier = { name = "xdg-desktop-entry"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "IvanMalison@gmail.com";
      author = "Ivan Malison";
      homepage = "https://github.com/taffybar/xdg-desktop-entry";
      url = "";
      synopsis = "Parse files conforming to the xdg desktop entry spec";
      description = "Parse files conforming to the xdg desktop entry spec.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
          (hsPkgs."multimap" or (errorHandler.buildDepError "multimap"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."xdg-desktop-entry" or (errorHandler.buildDepError "xdg-desktop-entry"))
          ];
          buildable = true;
        };
      };
    };
  }