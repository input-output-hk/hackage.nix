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
      identifier = { name = "satchmo-toysat"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/satchmo-toysat";
      url = "";
      synopsis = "toysat driver as backend for satchmo";
      description = "toysat driver as backend for satchmo";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."satchmo" or (errorHandler.buildDepError "satchmo"))
          (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
        ];
        buildable = true;
      };
    };
  }