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
      identifier = { name = "glib-stopgap"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/glib-stopgap#readme";
      url = "";
      synopsis = "Stopgap package of binding for GLib";
      description = "Please see the README on GitHub at <https://github.com/githubuser/glib-stopgap#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        pkgconfig = [
          (pkgconfPkgs."glib-2.0" or (errorHandler.pkgConfDepError "glib-2.0"))
          ];
        buildable = true;
        };
      tests = {
        "glib-stopgap-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
            (hsPkgs."glib-stopgap" or (errorHandler.buildDepError "glib-stopgap"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }