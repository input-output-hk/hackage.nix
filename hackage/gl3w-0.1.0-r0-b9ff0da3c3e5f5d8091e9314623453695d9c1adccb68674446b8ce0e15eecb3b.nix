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
      specVersion = "2.2";
      identifier = { name = "gl3w"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2021 HE, Tao <sighingnow@gmail.com>";
      maintainer = "sighingnow@gmail.com";
      author = "HE, Tao";
      homepage = "https://github.com/sighingnow/imgui-haskell/tree/master/imgui#readme";
      url = "";
      synopsis = "Haskell bindings for the gl3w library.";
      description = "Haskell bindings for the [gl3w](https://github.com/skaslev/gl3w) library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }