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
      identifier = { name = "interchangeable"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "arow.okamoto@gmail.com";
      author = "Kadzuya OKAMOTO";
      homepage = "https://github.com/arowM/interchangeable";
      url = "";
      synopsis = "A type class for interchangeable data.";
      description = "Library to use class 'Interchangeable' for interchangeable data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }