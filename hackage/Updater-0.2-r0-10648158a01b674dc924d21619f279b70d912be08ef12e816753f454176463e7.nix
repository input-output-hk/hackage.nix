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
      identifier = { name = "Updater"; version = "0.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "silvio.frischi@gmail.com";
      author = "Silvio Frischknecht";
      homepage = "https://github.com/yokto/Updater";
      url = "";
      synopsis = "Monadic FRP library based on stm";
      description = "Read the homepage for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }