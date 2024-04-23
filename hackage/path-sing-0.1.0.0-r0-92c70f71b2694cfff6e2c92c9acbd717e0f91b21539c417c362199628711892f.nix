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
      identifier = { name = "path-sing"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2023 Yamada Ryo";
      maintainer = "Yamada Ryo <ymdfield@outlook.jp>";
      author = "Yamada Ryo <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "A singleton wrapper for the `path` library.";
      description = "This library wraps the types in the [path](https://hackage.haskell.org/package/path) library\nwith [singleton types](https://hackage.haskell.org/package/singletons) to allow more well-typed\nhandling of file and directory paths.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
        ];
        buildable = true;
      };
    };
  }