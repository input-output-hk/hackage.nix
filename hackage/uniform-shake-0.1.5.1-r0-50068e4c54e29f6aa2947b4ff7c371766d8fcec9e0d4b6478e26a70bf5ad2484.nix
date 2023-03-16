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
      identifier = { name = "uniform-shake"; version = "0.1.5.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Andrew U. Frank <andrewufrank@gmail.com>";
      author = "Andrew Frank";
      homepage = "https://github.com/git@github.com:andrewufrank/u4blog.git#readme";
      url = "";
      synopsis = "uniform wrapper for shake";
      description = "shake top level functions using Path (not filepath)\nversion 2 to include in uniform ecosystem,\ni.e. use text, Path,";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."uniform-json" or (errorHandler.buildDepError "uniform-json"))
          (hsPkgs."uniformBase" or (errorHandler.buildDepError "uniformBase"))
          ];
        buildable = true;
        };
      };
    }