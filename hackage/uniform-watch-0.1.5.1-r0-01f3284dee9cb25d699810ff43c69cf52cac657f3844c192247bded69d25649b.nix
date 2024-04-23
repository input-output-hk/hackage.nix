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
      identifier = { name = "uniform-watch"; version = "0.1.5.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Andrew U. Frank <andrewufrank@gmail.com>";
      author = "Andrew Frank";
      homepage = "https://github.com/git@github.com:andrewufrank/u4blog.git#readme";
      url = "";
      synopsis = "uniform wrapper for watch";
      description = "watch wrapped for ErrIO to report all errors ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."twitch" or (errorHandler.buildDepError "twitch"))
          (hsPkgs."uniformBase" or (errorHandler.buildDepError "uniformBase"))
        ];
        buildable = true;
      };
    };
  }