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
      identifier = { name = "bson-lens"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "bill@casarin.me";
      author = "William Casarin";
      homepage = "https://github.com/jb55/bson-lens";
      url = "";
      synopsis = "BSON lenses";
      description = "Lenses for Data.Bson";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }