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
      specVersion = "1.8";
      identifier = { name = "yarr-image-io"; version = "1.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Leventov <leventov@ya.ru>";
      author = "Don Stewart, Raphael Javaux, Roman Leventov";
      homepage = "";
      url = "";
      synopsis = "Image IO for Yarr library";
      description = "@repa-devil@ package, adapted to @yarr@ library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yarr" or (errorHandler.buildDepError "yarr"))
          ];
        libs = [ (pkgs."IL" or (errorHandler.sysDepError "IL")) ];
        buildable = true;
        };
      };
    }