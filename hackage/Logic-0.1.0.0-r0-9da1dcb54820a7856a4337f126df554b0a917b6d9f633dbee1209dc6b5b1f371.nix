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
      identifier = { name = "Logic"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mail@tanakakazuki.com";
      author = "gogotanaka";
      homepage = "http://gogotanaka.me/";
      url = "";
      synopsis = "Logic";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }