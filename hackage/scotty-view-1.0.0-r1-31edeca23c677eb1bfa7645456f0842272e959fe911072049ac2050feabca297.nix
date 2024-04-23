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
      identifier = { name = "scotty-view"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "philemon.bouzy@gmail.com";
      author = "Philémon Bouzy";
      homepage = "";
      url = "";
      synopsis = "";
      description = "An extension for Scotty allowing its user to build an HTML\npage easily. This library can also read an HTML page from a\nfile and modify it.\nGithub repository: https://github.com/PhilemonBouzy/scotty-view";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "web" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."scotty-view" or (errorHandler.buildDepError "scotty-view"))
          ];
          buildable = true;
        };
      };
    };
  }