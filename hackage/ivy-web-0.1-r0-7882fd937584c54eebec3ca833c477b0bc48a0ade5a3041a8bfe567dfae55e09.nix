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
      specVersion = "1.2";
      identifier = { name = "ivy-web"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cnJamesDeng@gmail.com";
      author = "James Deng";
      homepage = "https://github.com/lilac/ivy-web/";
      url = "";
      synopsis = "A lightweight web framework, with type safe routes, based on invertible-syntax, and i18n support.";
      description = "The features of this web framework:\n*   Type safe routes, specify url-handler mapping in one place\n*   Simple yet elegant handler via type class\n*   Flexible template system, utilize exsisting libraries such as Blaze-Html and Hastache.\n*   Easy i18n\nFor an example, refer to https://github.com/lilac/ivy-example/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."partial-isomorphisms" or (errorHandler.buildDepError "partial-isomorphisms"))
          (hsPkgs."invertible-syntax" or (errorHandler.buildDepError "invertible-syntax"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
        ];
        buildable = true;
      };
    };
  }