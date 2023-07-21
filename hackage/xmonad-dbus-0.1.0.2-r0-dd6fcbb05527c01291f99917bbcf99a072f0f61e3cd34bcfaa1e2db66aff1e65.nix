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
      identifier = { name = "xmonad-dbus"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018-2023 Dmitry Geurkov";
      maintainer = "d.geurkov@gmail.com";
      author = "Dmitry Geurkov";
      homepage = "https://github.com/troydm/xmonad-dbus#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/githubuser/xmonad-dbus#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          ];
        buildable = true;
        };
      exes = {
        "xmonad-dbus" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."xmonad-dbus" or (errorHandler.buildDepError "xmonad-dbus"))
            ];
          buildable = true;
          };
        };
      tests = {
        "xmonad-dbus-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."xmonad-dbus" or (errorHandler.buildDepError "xmonad-dbus"))
            ];
          buildable = true;
          };
        };
      };
    }