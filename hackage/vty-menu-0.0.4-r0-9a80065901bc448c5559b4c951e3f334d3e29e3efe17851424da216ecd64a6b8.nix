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
      specVersion = "1.6";
      identifier = { name = "vty-menu"; version = "0.0.4"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Timothy Hobbs <timothyhobbs@seznam.cz>";
      author = "Timothy Hobbs & Cheater__, Sergii Rudchenko <rudchenkos@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A lib for displaying a menu and getting a selection using VTY";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = { "vty-menu" = { buildable = true; }; };
      };
    }