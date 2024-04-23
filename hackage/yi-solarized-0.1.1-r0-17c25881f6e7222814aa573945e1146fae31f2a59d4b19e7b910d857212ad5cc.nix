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
      identifier = { name = "yi-solarized"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/yi-solarized";
      url = "";
      synopsis = "Solarized colour theme for the Yi text editor";
      description = "Solarized colour theme for Yi. Check source for yi.hs usage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yi" or (errorHandler.buildDepError "yi"))
        ];
        buildable = true;
      };
    };
  }