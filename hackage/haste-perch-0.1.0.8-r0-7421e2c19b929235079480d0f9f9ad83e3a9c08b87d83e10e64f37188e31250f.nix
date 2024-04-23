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
    flags = { haste-inst = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haste-perch"; version = "0.1.0.8"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "https://github.com/agocorona/haste-perch";
      url = "";
      synopsis = "Create, navigate and modify the DOM tree with composable syntax, with the haste compiler";
      description = "see the description at the homepage.\nThis version add support for the Client Monad (Module Haste.App.Perch)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.haste-inst
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."haste-lib" or (errorHandler.buildDepError "haste-lib"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."haste-compiler" or (errorHandler.buildDepError "haste-compiler"))
          ];
        buildable = true;
      };
    };
  }