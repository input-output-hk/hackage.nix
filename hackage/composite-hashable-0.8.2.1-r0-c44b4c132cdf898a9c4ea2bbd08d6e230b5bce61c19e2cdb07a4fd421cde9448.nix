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
      identifier = { name = "composite-hashable"; version = "0.8.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc., 2021 Vital Biosciences";
      maintainer = "oss@vitalbio.com";
      author = "Confer Health, Inc";
      homepage = "https://github.com/composite-hs/composite#readme";
      url = "";
      synopsis = "Orphan hashable instances.";
      description = "Hashable instance for (:->) and Record.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
    };
  }