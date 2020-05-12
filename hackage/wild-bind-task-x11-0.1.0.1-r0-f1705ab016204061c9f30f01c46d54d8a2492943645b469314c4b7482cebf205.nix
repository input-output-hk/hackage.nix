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
      identifier = { name = "wild-bind-task-x11"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/wild-bind";
      url = "";
      synopsis = "Task to install and export everything you need to use WildBind in X11";
      description = "Task to install and export everything you need to use WildBind in X11. See <https://github.com/debug-ito/wild-bind>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wild-bind" or (errorHandler.buildDepError "wild-bind"))
          (hsPkgs."wild-bind-x11" or (errorHandler.buildDepError "wild-bind-x11"))
          (hsPkgs."wild-bind-indicator" or (errorHandler.buildDepError "wild-bind-indicator"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "import-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wild-bind-task-x11" or (errorHandler.buildDepError "wild-bind-task-x11"))
            ];
          buildable = true;
          };
        };
      };
    }